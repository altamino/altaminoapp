package com.narvii.story.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.story.IStoryBottomSheetListener;
import com.narvii.story.IStoryShareListener;
import com.narvii.story.StoryLinkHelper;
import com.narvii.util.Log;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* loaded from: classes3.dex */
public class StoryInfoCover extends FrameLayout implements View.OnClickListener {
    private Community community;
    private boolean isPreview;
    private StoryLeftCollapseView leftcollapse;
    private View linkContainer;
    private StoryRightButtonContainer rightButton;
    private Blog story;
    private StoryUserView storyUserView;

    public StoryInfoCover(Context context) {
        this(context, null);
    }

    public StoryInfoCover(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StoryInfoCover(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.story_detail_info_layout, (ViewGroup) this, true);
        setClipChildren(false);
        setBackgroundResource(R.drawable.story_detail_cover_gradient);
        this.rightButton = (StoryRightButtonContainer) findViewById(R.id.story_right_button);
        this.leftcollapse = (StoryLeftCollapseView) findViewById(R.id.left_collapse);
        this.storyUserView = (StoryUserView) findViewById(R.id.story_user_container);
        this.linkContainer = findViewById(R.id.link_container);
        this.linkContainer.setOnClickListener(this);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.storyUserView.setAlignWidth(this.rightButton.getMeasuredWidth());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.view.View] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        StoryUserView storyUserView = this.storyUserView;
        if (storyUserView == null || this.rightButton == null) {
            return;
        }
        int measuredWidth = storyUserView.getMeasuredWidth();
        int measuredHeight = this.storyUserView.getMeasuredHeight();
        int i5 = 5;
        StoryRightButtonContainer storyRightButtonContainer = this.rightButton;
        int measuredWidth2 = 0;
        int top = 0;
        while (storyRightButtonContainer != this && i5 > 0) {
            top += storyRightButtonContainer.getTop();
            measuredWidth2 += storyRightButtonContainer.getLeft();
            Object parent = storyRightButtonContainer.getParent();
            i5--;
            if (parent instanceof ViewGroup) {
                storyRightButtonContainer = (View) parent;
            } else {
                Log.e((storyRightButtonContainer == null ? null : storyRightButtonContainer.getClass().getName()) + "is not ViewGroup");
            }
        }
        if (!Utils.isRtl()) {
            measuredWidth2 = (measuredWidth2 + this.rightButton.getMeasuredWidth()) - measuredWidth;
        }
        this.storyUserView.layout(measuredWidth2, top, measuredWidth + measuredWidth2, measuredHeight + top);
    }

    public void setStoryInfo(Blog blog, Community community, boolean z) {
        this.story = blog;
        this.community = community;
        this.isPreview = z;
        updateView();
    }

    public void resetViewState() {
        this.leftcollapse.setCollapseState(true);
        this.storyUserView.updateView();
    }

    public void updateView() {
        Blog blog = this.story;
        if (blog == null) {
            return;
        }
        ViewUtils.show(this.linkContainer, blog.getStoryLinkSummary() != null);
        this.rightButton.setStoryInfo(this.story, this.isPreview);
        this.leftcollapse.setStoryInfo(this.story, this.community, this.isPreview);
        this.storyUserView.setStoryInfo(this.story, this.isPreview);
    }

    public void setBottomSheetListener(IStoryBottomSheetListener iStoryBottomSheetListener) {
        this.rightButton.setBottomSheetListener(iStoryBottomSheetListener);
    }

    public void setStoryShareListener(IStoryShareListener iStoryShareListener) {
        this.rightButton.setStoryShareListener(iStoryShareListener);
    }

    public void performVote() {
        this.rightButton.doVote();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.narvii.app.NVContext] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.link_container) {
            return;
        }
        StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview).area("ReadMore").actSemantic(ActSemantic.checkDetail).send();
        PageView pageViewParent = PageViewUtils.getPageViewParent(this);
        ?? nVContext = Utils.getNVContext(getContext());
        if (pageViewParent == null) {
            pageViewParent = nVContext;
        }
        new StoryLinkHelper(pageViewParent).openLink(this.story.getStoryLinkSummary(), this.isPreview, this.community);
    }
}
