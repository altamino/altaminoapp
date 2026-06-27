package com.narvii.story.detail;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityHelper;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityLaunchHelperWithIcon;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ScrollViewWithMaxHeight2;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryLeftCollapseView extends LinearLayout implements View.OnClickListener {
    private Community community;
    private CommunityHelper communityHelper;
    private DateTimeFormatter dateTimeFormatter;
    private boolean isAnimating;
    private boolean isCollapse;
    private boolean isPreview;
    StoryTopicView.OnPreClickListener mainPreClick;
    private NVContext nvContext;
    private Blog story;
    StoryTopicView.OnPreClickListener userPreClick;

    public StoryLeftCollapseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isCollapse = true;
        this.isAnimating = false;
        this.mainPreClick = new StoryTopicView.OnPreClickListener() { // from class: com.narvii.story.detail.StoryLeftCollapseView.1
            @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
            public void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
                StoryLeftCollapseView.this.getLogEventClickBuilder().actSemantic(ActSemantic.checkDetail).object(storyTopic).area("MainTopic").send();
            }
        };
        this.userPreClick = new StoryTopicView.OnPreClickListener() { // from class: com.narvii.story.detail.StoryLeftCollapseView.2
            @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
            public void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
                StoryLeftCollapseView.this.getLogEventClickBuilder().actSemantic(ActSemantic.checkDetail).object(storyTopic).area("StoryInfo").send();
            }
        };
        init(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ScrollViewWithMaxHeight2 scrollViewWithMaxHeight2 = (ScrollViewWithMaxHeight2) findViewById(R.id.scroll_with_max_height);
        if (scrollViewWithMaxHeight2 != null) {
            scrollViewWithMaxHeight2.setInterceptParent(true);
        }
    }

    private void init(Context context) {
        this.nvContext = Utils.getNVContext(getContext());
        this.dateTimeFormatter = DateTimeFormatter.getInstance(getContext());
        setOrientation(1);
        LinearLayout.inflate(context, R.layout.story_detail_info_layout_left_collapses, this);
        setOnClickListener(this);
        this.communityHelper = new CommunityHelper(this.nvContext) { // from class: com.narvii.story.detail.StoryLeftCollapseView.3
            @Override // com.narvii.community.CommunityHelper
            protected void startActivity(Intent intent) {
                StoryLeftCollapseView.this.startActivity(intent);
            }

            @Override // com.narvii.community.CommunityHelper
            protected void onCancelButtonPreClick(String str) {
                super.onCancelButtonPreClick(str);
                if (StoryLeftCollapseView.this.story == null) {
                    return;
                }
                StoryLeftCollapseView.this.getLogEventClickBuilder().area(str).actSemantic(ActSemantic.cancelJoin).objectType(ObjectType.community).objectSubType(null).objectId(StoryLeftCollapseView.this.story.ndcId).area("StoryInfo").send();
            }

            @Override // com.narvii.community.CommunityHelper
            protected void onJoinButtonPreClick(String str) {
                super.onJoinButtonPreClick(str);
                if (StoryLeftCollapseView.this.story == null) {
                    return;
                }
                StoryLeftCollapseView.this.getLogEventClickBuilder().area(str).actSemantic(ActSemantic.checkDetail).objectType(ObjectType.community).objectSubType(null).objectId(StoryLeftCollapseView.this.story.ndcId).area("StoryInfo").send();
            }
        };
    }

    public void setStoryInfo(Blog blog, Community community, boolean z) {
        this.story = blog;
        this.community = community;
        this.isPreview = z;
        updateView();
    }

    public void setCollapseState(boolean z) {
        this.isCollapse = z;
        updateView();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        } else {
            layoutParams.height = -2;
        }
        setLayoutParams(layoutParams);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView() {
        if (this.story == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        StoryTopicView storyTopicView = (StoryTopicView) findViewById(R.id.story_topic_editor);
        storyTopicView.enableBlink(true);
        storyTopicView.setClipChildren(false);
        storyTopicView.setOnPreClickListener(this.mainPreClick);
        StoryTopic promotedTopic = this.story.getPromotedTopic();
        if (promotedTopic != null) {
            storyTopicView.setVisibility(0);
            storyTopicView.setTopic(promotedTopic);
            storyTopicView.setClickable(true);
            storyTopicView.setPreview(this.isPreview);
        } else {
            storyTopicView.setVisibility(8);
        }
        TextView textView = (TextView) findViewById(R.id.story_name);
        textView.setText(this.story.title());
        ImageView imageView = (ImageView) findViewById(R.id.story_collapse_arrow);
        if (this.isCollapse && !this.isAnimating) {
            textView.setMaxLines(1);
            findViewById(R.id.story_divider).setVisibility(8);
            findViewById(R.id.story_detail_container).setVisibility(8);
            imageView.setImageResource(R.drawable.ic_arrow_triangle_right);
            return;
        }
        textView.setMaxLines(Integer.MAX_VALUE);
        findViewById(R.id.story_divider).setVisibility(0);
        findViewById(R.id.story_detail_container).setVisibility(0);
        imageView.setImageResource(R.drawable.ic_arrow_triangle_down);
        TextView textView2 = (TextView) findViewById(R.id.story_user_name);
        User user = this.story.author;
        textView2.setText(user != null ? user.nickname() : null);
        textView2.setOnClickListener(this);
        textView2.requestLayout();
        ((TextView) findViewById(R.id.datetime)).setText(this.dateTimeFormatter.formatHeadlineFeedTime(this.story.modifiedTime));
        View viewFindViewById = findViewById(R.id.view_count_container);
        Integer num = this.story.viewCount;
        ViewUtils.visible(viewFindViewById, num != null && num.intValue() > 0);
        if (this.story.viewCount != null) {
            ((TextView) findViewById(R.id.view_count)).setText(TextUtils.getLiteCountWithCeil2(this.story.viewCount.intValue()));
        }
        TextView textView3 = (TextView) findViewById(R.id.story_content);
        if (android.text.TextUtils.isEmpty(this.story.content())) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            NVText nVText = new NVText(this.story.content());
            nVText.setDarkTheme(true);
            nVText.markAllEntries(new DefaultTagClickListener() { // from class: com.narvii.story.detail.StoryLeftCollapseView.4
                @Override // com.narvii.util.text.DefaultTagClickListener
                protected void startActivity(View view, Intent intent) {
                    if (StoryLeftCollapseView.this.story.ndcId != -1) {
                        intent.putExtra("__communityId", StoryLeftCollapseView.this.story.ndcId);
                    }
                    super.startActivity(view, intent);
                }
            });
            textView3.setClickable(true);
            textView3.setMovementMethod(LinkTouchMovementMethod.getInstance());
            textView3.setText(nVText);
        }
        TextView textView4 = (TextView) findViewById(R.id.story_credits);
        textView4.setVisibility(android.text.TextUtils.isEmpty(this.story.credits) ? 8 : 0);
        textView4.setText(this.story.credits);
        NVFlowLayout nVFlowLayout = (NVFlowLayout) findViewById(R.id.story_topic_flow);
        List<StoryTopic> list = this.story.userAddedTopicList;
        if (list != null && !list.isEmpty()) {
            nVFlowLayout.setVisibility(0);
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            nVFlowLayout.removeAllViews();
            for (StoryTopic storyTopic : this.story.userAddedTopicList) {
                StoryTopicView storyTopicView2 = (StoryTopicView) layoutInflaterFrom.inflate(R.layout.story_topic_view_layout, (ViewGroup) nVFlowLayout, false);
                storyTopicView2.setOnPreClickListener(this.userPreClick);
                storyTopicView2.setClickable(true);
                storyTopicView2.setTopic(storyTopic);
                storyTopicView2.setPreview(this.isPreview);
                storyTopicView2.setBackgroundColor(872415231);
                nVFlowLayout.addView(storyTopicView2);
            }
        } else {
            nVFlowLayout.setVisibility(8);
        }
        final View viewFindViewById2 = findViewById(R.id.community_info);
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.detail.StoryLeftCollapseView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (StoryLeftCollapseView.this.community == null) {
                    Log.e("StoryInfoView: empty community info");
                }
                if (StoryLeftCollapseView.this.communityHelper.isJoinedCommunityWithContext(StoryLeftCollapseView.this.story.getPublishNdcId())) {
                    StoryLeftCollapseView.this.getLogEventClickBuilder().area("StoryInfo").object(StoryLeftCollapseView.this.community).actSemantic(ActSemantic.aminoEnter).send();
                    FragmentActivity activity = StoryLeftCollapseView.this.nvContext instanceof NVFragment ? ((NVFragment) StoryLeftCollapseView.this.nvContext).getActivity() : StoryLeftCollapseView.this.nvContext instanceof NVActivity ? (NVActivity) StoryLeftCollapseView.this.nvContext : null;
                    if (activity != null) {
                        new CommunityLaunchHelperWithIcon(StoryLeftCollapseView.this.nvContext, activity).launchCommunity(StoryLeftCollapseView.this.community, (NVImageView) viewFindViewById2.findViewById(R.id.community_icon), null);
                        return;
                    } else {
                        new CommunityLaunchHelper(StoryLeftCollapseView.this.nvContext).launch(StoryLeftCollapseView.this.story.ndcId, StoryLeftCollapseView.this.community, null, null, null, null, null, false);
                        return;
                    }
                }
                StoryLeftCollapseView.this.getLogEventClickBuilder().area("StoryInfo").object(StoryLeftCollapseView.this.community).actSemantic(ActSemantic.checkDetail).send();
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", StoryLeftCollapseView.this.community.id);
                intent.putExtra("icon", StoryLeftCollapseView.this.community.icon);
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(StoryLeftCollapseView.this.community));
                StoryLeftCollapseView.this.startActivity(intent);
            }
        });
        if (this.community != null) {
            ((CommunityIconView) viewFindViewById2.findViewById(R.id.community_icon)).setCommunity(this.community);
            ((TextView) viewFindViewById2.findViewById(R.id.community_name)).setText(this.community.name);
            viewFindViewById2.setVisibility(0);
            return;
        }
        viewFindViewById2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startActivity(Intent intent) {
        PageView pageViewParent = PageViewUtils.getPageViewParent(this);
        if (pageViewParent != null) {
            pageViewParent.startActivity(intent);
        } else {
            this.nvContext.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventClickBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.story_user_name) {
            if (this.isPreview) {
                NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
                return;
            }
            if (this.story != null) {
                getLogEventClickBuilder().area("StoryInfo").actSemantic(ActSemantic.checkDetail).object(this.story.author).send();
            }
            if (this.communityHelper.checkCommunityJoined(this.story.ndcId, "UserIcon")) {
                Intent intent = UserProfileFragment.intent(this.nvContext, this.story.author);
                int i = this.story.ndcId;
                if (i != -1) {
                    intent.putExtra("__communityId", i);
                }
                if (((ConfigService) this.nvContext.getService("config")).getCommunityId() == 0) {
                    intent.putExtra("__model", true);
                }
                startActivity(intent);
                return;
            }
            return;
        }
        if (this.isAnimating) {
            return;
        }
        this.isCollapse = !this.isCollapse;
        if (!this.isCollapse) {
            getLogEventClickBuilder().actSemantic(ActSemantic.checkStoryInfo).send();
        }
        doCollapseAnimator();
    }

    private void doCollapseAnimator() {
        final ViewGroup.LayoutParams layoutParams = getLayoutParams();
        measure(View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = getMeasuredHeight();
        updateView();
        measure(View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(measuredHeight, getMeasuredHeight());
        valueAnimatorOfInt.setDuration(200L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.detail.StoryLeftCollapseView.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                StoryLeftCollapseView.this.setLayoutParams(layoutParams);
                StoryLeftCollapseView.this.requestLayout();
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.detail.StoryLeftCollapseView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                StoryLeftCollapseView.this.isAnimating = true;
                StoryLeftCollapseView.this.updateView();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryLeftCollapseView.this.isAnimating = false;
                StoryLeftCollapseView.this.updateView();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                StoryLeftCollapseView.this.isAnimating = false;
            }
        });
        valueAnimatorOfInt.start();
    }
}
