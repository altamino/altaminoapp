package com.narvii.item.detail;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
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
import com.narvii.widget.CardView;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* loaded from: classes.dex */
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

    public void setIsHiddenPost(boolean z) {
        this.isHiddenPost = z;
    }

    public void setPreview(boolean z) {
        this.preview = z;
        TextView textView = (TextView) this.actionbar2.findViewById(R.id.text);
        View viewFindViewById = this.actionbar2.findViewById(R.id.actionbar_back);
        if (z) {
            View view = this.actionbar2;
            if (view instanceof LinearLayout) {
                ((LinearLayout) view).setGravity(8388627);
            }
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z ? 4 : 8);
        }
        if (textView != null) {
            textView.setText(R.string.close_preview);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.itemCard2.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.label2.getLayoutParams();
        if (z) {
            int iDpToPx = (int) Utils.dpToPx(getContext(), 10.0f);
            if (Build.VERSION.SDK_INT < 17) {
                marginLayoutParams.leftMargin = iDpToPx;
                marginLayoutParams2.rightMargin = iDpToPx;
            } else {
                marginLayoutParams.setMarginStart(iDpToPx);
                marginLayoutParams2.setMarginEnd(iDpToPx);
            }
        }
    }

    public void setHeaderClickListener(View.OnClickListener onClickListener) {
        View view = this.voteBtn;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public void setLongClickVoteListener(View.OnLongClickListener onLongClickListener) {
        View view = this.voteBtn;
        if (view != null) {
            view.setOnLongClickListener(onLongClickListener);
        }
    }

    public void setHeight1(int i) {
        this.height1 = i;
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.keywordListener = new Callback<String>() { // from class: com.narvii.item.detail.HeaderLayout.1
            @Override // com.narvii.util.Callback
            public void call(String str) {
                if (HeaderLayout.this.preview) {
                    NVToast.makeText(HeaderLayout.this.getContext(), R.string.this_is_preview, 0).show();
                    return;
                }
                NVContext nVContext = Utils.getNVContext(HeaderLayout.this.getContext());
                if (new CommunityHelper(nVContext).checkCommunityJoined(HeaderLayout.this.item.ndcId)) {
                    if (HeaderLayout.this.isHiddenPost) {
                        FansOnlyHintDialog.showFansOnlyHintDialog(nVContext, HeaderLayout.this.item, "Page Detailed View");
                        return;
                    }
                    Intent intent = FragmentWrapperActivity.intent(SearchPagesFragment.class);
                    intent.putExtra("q", str);
                    intent.putExtra("tab", 1);
                    try {
                        HeaderLayout.this.getContext().startActivity(intent);
                    } catch (Exception unused) {
                    }
                }
            }
        };
    }

    public void setDarkTheme(boolean z, boolean z2) {
        if (this.darkTheme == z && this.colorBackground == z2) {
            return;
        }
        this.darkTheme = z;
        this.colorBackground = z2;
        updateView();
    }

    private void updateView() {
        int i;
        this.keywordsView.setDarkTheme(this.darkTheme);
        Item item = this.item;
        if (item == null || !item.hasBackground()) {
            i = R.drawable.detail_vote_btn;
        } else {
            int backgroundColor = this.item.getBackgroundColor();
            i = (backgroundColor == 0 || PaletteUtils.isDarkColor(backgroundColor)) ? R.drawable.detail_vote_btn_dark : R.drawable.detail_vote_btn_light;
        }
        this.voteBtn.setBackgroundResource(i);
        this.voteIcon.setNoneColor(!this.darkTheme ? -11184811 : -1);
        this.voteCount.setTextColor(!this.darkTheme ? -11184811 : -1118482);
        this.voteProgress.setSpinColor(this.darkTheme ? -1 : -11184811);
    }

    public void setVoting(boolean z) {
        this.voteIcon.setVisibility(z ? 8 : 0);
        this.voteProgress.setVisibility(z ? 0 : 8);
    }

    public void removeActionBar2() {
        View view = this.actionbar2;
        if (view != null) {
            removeView(view);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        SlideshowView slideshowView;
        super.onFinishInflate();
        this.gradient = findViewById(R.id.gradient);
        this.slideshow = (SlideshowView) findViewById(R.id.slideshow);
        this.itemCard = (CardView) findViewById(R.id.item_card);
        this.keywordsView = (KeywordsView) findViewById(R.id.keywords);
        this.keywordsView.setOnKeywordClickListener(this.keywordListener);
        this.keywordsView.setGravity(1);
        this.keywordsView.setMaxWidth((int) (getContext().getResources().getDisplayMetrics().widthPixels - Utils.dpToPx(getContext(), 20.0f)));
        this.voteIcon = (VoteIcon) findViewById(R.id.vote_icon);
        this.voteCount = (TextView) findViewById(R.id.vote_count);
        this.voteProgress = (SpinningView) findViewById(R.id.vote_progress);
        this.voteBtn = findViewById(R.id.vote_btn);
        this.voteLayout = findViewById(R.id.vote_layout);
        this.label = (TextView) findViewById(R.id.label);
        this.actionbar2 = findViewById(R.id.actionbar2);
        this.itemCard2 = (CardView) this.actionbar2.findViewById(R.id.item_card2);
        this.label2 = (TextView) this.actionbar2.findViewById(R.id.label);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.actionbar2.getLayoutParams();
        marginLayoutParams.height = actionBarOverlaySize;
        marginLayoutParams.topMargin = statusBarOverlaySize;
        this.goldLine = findViewById(R.id.item_gold_line);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        if (this.blurView != null && (slideshowView = this.slideshow) != null) {
            slideshowView.setOnImageChangedListener(this);
        }
        updateView();
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

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize() + ((NVActivity) getContext()).getActionBarOverlaySize();
        int i5 = statusBarOverlaySize / 2;
        int i6 = statusBarOverlaySize + i5;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if ("fade".equals(childAt.getTag())) {
                setAlpha(childAt, i5, i6);
            }
        }
        int height = getHeight();
        if (height > i6) {
            this.actionbar2.setVisibility(4);
            this.actionbar2.setAlpha(0.0f);
            this.goldLine.setVisibility(4);
            this.goldLine.setAlpha(0.0f);
        } else if (height <= statusBarOverlaySize) {
            this.actionbar2.setVisibility(0);
            this.actionbar2.setAlpha(1.0f);
            View view = this.goldLine;
            User user = this.item.author;
            view.setVisibility((user == null || user.role != 254) ? 4 : 0);
            this.goldLine.setAlpha(1.0f);
        } else {
            float f = ((i6 - height) * 1.0f) / (i6 - statusBarOverlaySize);
            this.actionbar2.setVisibility(0);
            this.actionbar2.setAlpha(f);
            View view2 = this.goldLine;
            User user2 = this.item.author;
            view2.setVisibility((user2 == null || user2.role != 254) ? 4 : 0);
            this.goldLine.setAlpha(f);
        }
        int i8 = this.height1;
        if (this.blurReady) {
            float f2 = height < i8 / 2 ? (((height - r7) - r8) * 1.0f) / ((r9 - r7) - r8) : 1.0f;
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            this.blurView.setVisibility(f2 >= 1.0f ? 4 : 0);
            this.blurView.setAlpha(1.0f - f2);
            return;
        }
        this.blurView.setVisibility(4);
    }

    private void setAlpha(View view, int i, int i2) {
        int top = view.getTop();
        if (top <= i) {
            view.setAlpha(0.0f);
            view.setVisibility(4);
        } else if (top >= i2) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
        } else {
            view.setAlpha(1.0f - (((i2 - top) * 1.0f) / (i2 - i)));
            view.setVisibility(0);
        }
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        if (this.blurReady || i != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }
}
