package com.narvii.item.detail;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityHelper;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.search.SearchPagesFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.CardView;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class HeaderLayout extends RelativeLayout implements NVImageView.OnImageChangedListener {
    View actionbar2;
    boolean blurReady;
    private RealtimeBlurView blurView;
    boolean colorBackground;
    boolean darkTheme;
    View goldLine;
    public View gradient;
    int height1;
    private boolean isHiddenPost;
    Item item;
    CardView itemCard;
    CardView itemCard2;
    private final Callback<String> keywordListener;
    public KeywordsView keywordsView;
    TextView label;
    TextView label2;
    private boolean preview;
    SlideshowView slideshow;
    private View voteBtn;
    private TextView voteCount;
    private VoteIcon voteIcon;
    View voteLayout;
    private SpinningView voteProgress;

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    public void setIsHiddenPost(boolean z6) {
        this.isHiddenPost = z6;
    }

    private void updateView() {
        int i10;
        this.keywordsView.setDarkTheme(this.darkTheme);
        Item item = this.item;
        if (item == null || !item.hasBackground()) {
            i10 = R.drawable.detail_vote_btn;
        } else {
            int backgroundColor = this.item.getBackgroundColor();
            i10 = (backgroundColor == 0 || PaletteUtils.isDarkColor(backgroundColor)) ? R.drawable.detail_vote_btn_dark : R.drawable.detail_vote_btn_light;
        }
        this.voteBtn.setBackgroundResource(i10);
        this.voteIcon.setNoneColor(!this.darkTheme ? -11184811 : -1);
        this.voteCount.setTextColor(!this.darkTheme ? -11184811 : -1118482);
        this.voteProgress.setSpinColor(this.darkTheme ? -1 : -11184811);
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (this.blurReady || i10 != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }

    public void removeActionBar2() {
        View view = this.actionbar2;
        if (view != null) {
            removeView(view);
        }
    }

    public void setDarkTheme(boolean z6, boolean z10) {
        if (this.darkTheme == z6 && this.colorBackground == z10) {
            return;
        }
        this.darkTheme = z6;
        this.colorBackground = z10;
        updateView();
    }

    public void setHeaderClickListener(View.OnClickListener onClickListener) {
        View view = this.voteBtn;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public void setItem(Item item) {
        this.item = item;
        boolean zEquals = "none".equals(JacksonUtils.nodeString(item.extensions, "coverAnimation"));
        int backgroundColor = item.getBackgroundColor();
        if (backgroundColor != 0) {
            this.slideshow.setBackgroundColor(backgroundColor);
        } else {
            this.slideshow.setBackgroundResource(R.drawable.slideshow_bg);
        }
        SlideshowView slideshowView = this.slideshow;
        slideshowView.noSlide = zEquals;
        slideshowView.setMediaList(item.mediaList);
        this.itemCard.setItem(item);
        this.label.setText(item.label);
        this.itemCard2.setItem(item);
        this.label2.setText(item.label);
        this.keywordsView.setKeywords(item.keywords);
        this.voteIcon.setVotedValue(item.getVotedValue(Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()))));
        this.voteCount.setText(item.getTotalVotesCount() == 0 ? getContext().getString(R.string.like) : String.valueOf(item.getTotalVotesCount()));
    }

    public void setLongClickVoteListener(View.OnLongClickListener onLongClickListener) {
        View view = this.voteBtn;
        if (view != null) {
            view.setOnLongClickListener(onLongClickListener);
        }
    }

    public void setPreview(boolean z6) {
        this.preview = z6;
        TextView textView = (TextView) this.actionbar2.findViewById(R.id.text);
        View viewFindViewById = this.actionbar2.findViewById(R.id.actionbar_back);
        if (z6) {
            View view = this.actionbar2;
            if (view instanceof LinearLayout) {
                ((LinearLayout) view).setGravity(8388627);
            }
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z6 ? 4 : 8);
        }
        if (textView != null) {
            textView.setText(R.string.close_preview);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.itemCard2.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.label2.getLayoutParams();
        if (z6) {
            int iDpToPx = (int) Utils.dpToPx(getContext(), 10.0f);
            marginLayoutParams.setMarginStart(iDpToPx);
            marginLayoutParams2.setMarginEnd(iDpToPx);
        }
    }

    public void setVoting(boolean z6) {
        this.voteIcon.setVisibility(z6 ? 8 : 0);
        this.voteProgress.setVisibility(z6 ? 0 : 8);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.keywordListener = new Callback<String>() { // from class: com.narvii.item.detail.HeaderLayout.1
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.Callback
            public void call(String str) {
                if (HeaderLayout.this.preview) {
                    NVToast.makeText(HeaderLayout.this.getContext(), R.string.this_is_preview, 0).show();
                    return;
                }
                NVContext nVContext = Utils.getNVContext(HeaderLayout.this.getContext());
                if (new CommunityHelper(nVContext).checkCommunityJoined(HeaderLayout.this.item.ndcId)) {
                    if (HeaderLayout.this.isHiddenPost) {
                        FansOnlyHintDialog.showFansOnlyHintDialog(nVContext, HeaderLayout.this.item, EventConstants.LikePost.PAGE_DETAILED_VIEW);
                        return;
                    }
                    Intent intent = FragmentWrapperActivity.intent(SearchPagesFragment.class);
                    intent.putExtra("q", str);
                    intent.putExtra("tab", 1);
                    try {
                        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(HeaderLayout.this.getContext(), intent);
                    } catch (Exception unused) {
                    }
                }
            }
        };
    }

    private void setAlpha(View view, int i10, int i11) {
        int top = view.getTop();
        if (top <= i10) {
            view.setAlpha(0.0f);
            view.setVisibility(4);
        } else if (top >= i11) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
        } else {
            view.setAlpha(1.0f - (((i11 - top) * 1.0f) / (i11 - i10)));
            view.setVisibility(0);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        SlideshowView slideshowView;
        super.onFinishInflate();
        this.gradient = findViewById(R.id.gradient);
        this.slideshow = (SlideshowView) findViewById(R.id.slideshow);
        this.itemCard = (CardView) findViewById(R.id.item_card);
        KeywordsView keywordsView = (KeywordsView) findViewById(R.id.keywords);
        this.keywordsView = keywordsView;
        keywordsView.setOnKeywordClickListener(this.keywordListener);
        this.keywordsView.setGravity(1);
        this.keywordsView.setMaxWidth((int) (getContext().getResources().getDisplayMetrics().widthPixels - Utils.dpToPx(getContext(), 20.0f)));
        this.voteIcon = (VoteIcon) findViewById(R.id.vote_icon);
        this.voteCount = (TextView) findViewById(R.id.vote_count);
        this.voteProgress = (SpinningView) findViewById(R.id.vote_progress);
        this.voteBtn = findViewById(R.id.vote_btn);
        this.voteLayout = findViewById(R.id.vote_layout);
        this.label = (TextView) findViewById(R.id.label);
        View viewFindViewById = findViewById(R.id.actionbar2);
        this.actionbar2 = viewFindViewById;
        this.itemCard2 = (CardView) viewFindViewById.findViewById(R.id.item_card2);
        this.label2 = (TextView) this.actionbar2.findViewById(R.id.label_action_bar);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.actionbar2.getLayoutParams();
        marginLayoutParams.height = actionBarOverlaySize;
        marginLayoutParams.topMargin = statusBarOverlaySize;
        this.goldLine = findViewById(R.id.item_gold_line);
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.blurView = realtimeBlurView;
        if (realtimeBlurView != null && (slideshowView = this.slideshow) != null) {
            slideshowView.setOnImageChangedListener(this);
        }
        updateView();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        float f;
        super.onLayout(z6, i10, i11, i12, i13);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i16 = statusBarOverlaySize + actionBarOverlaySize;
        int i17 = i16 / 2;
        int i18 = i16 + i17;
        int childCount = getChildCount();
        int i19 = 0;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt = getChildAt(i20);
            if ("fade".equals(childAt.getTag())) {
                setAlpha(childAt, i17, i18);
            }
        }
        int height = getHeight();
        float f6 = 0.0f;
        if (height > i18) {
            this.actionbar2.setVisibility(4);
            this.actionbar2.setAlpha(0.0f);
            this.goldLine.setVisibility(4);
            this.goldLine.setAlpha(0.0f);
        } else if (height <= i16) {
            this.actionbar2.setVisibility(0);
            this.actionbar2.setAlpha(1.0f);
            View view = this.goldLine;
            User user = this.item.author;
            if (user != null && user.role == 254) {
                i15 = 0;
            } else {
                i15 = 4;
            }
            view.setVisibility(i15);
            this.goldLine.setAlpha(1.0f);
        } else {
            float f7 = ((i18 - height) * 1.0f) / (i18 - i16);
            this.actionbar2.setVisibility(0);
            this.actionbar2.setAlpha(f7);
            View view2 = this.goldLine;
            User user2 = this.item.author;
            if (user2 != null && user2.role == 254) {
                i14 = 0;
            } else {
                i14 = 4;
            }
            view2.setVisibility(i14);
            this.goldLine.setAlpha(f7);
        }
        int i21 = this.height1;
        if (this.blurReady) {
            int i22 = i21 / 2;
            if (height < i22) {
                f = (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((i22 - statusBarOverlaySize) - actionBarOverlaySize);
            } else {
                f = 1.0f;
            }
            if (f >= 0.0f) {
                f6 = f;
            }
            RealtimeBlurView realtimeBlurView = this.blurView;
            if (f6 >= 1.0f) {
                i19 = 4;
            }
            realtimeBlurView.setVisibility(i19);
            this.blurView.setAlpha(1.0f - f6);
            return;
        }
        this.blurView.setVisibility(4);
    }
}
