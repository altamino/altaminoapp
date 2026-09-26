package com.narvii.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.util.Callback;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes8.dex */
public class FeedBottomLayout extends RelativeLayout {
    public static final int BOTTOM_ANIMATION_MODE_0 = 0;
    public static final int BOTTOM_ANIMATION_MODE_1 = 1;
    public static final int BOTTOM_ANIMATION_MODE_2 = 2;
    public static final int SSB_MODE_CURATOR = 2;
    public static final int SSB_MODE_HEADLINE_VIEWER = 3;
    public static final int SSB_MODE_LEADER = 1;
    public static final int SSB_MODE_NORMAL_USER = 0;
    BottomAnimationListener bottomAnimationListener;
    private View broadcastView;
    private TextView broadcastViewHint;
    private View btnHeadlineCommentContainer;
    private View btnHeadlineMoreContainer;
    private View btnHeadlineShareContainer;
    private View btnHeadlineVoteContainer;
    private int displayMode;
    private View featureView;
    private TextView featureViewHint;
    private TextView goNextHint;
    TintButton goNextLeaderIcon;
    private View goNextLeaderView;
    private View goNextNomalView;
    private TextView goNextNormalHint;
    TintButton goNextNormalIcon;
    BottomVoteIcon headlineBottomVoteIcon;
    TintButton headlineCommentIcon;
    private View headlineViewerContainer;
    TintButton healineMoreIcon;
    TintButton healineShareIcon;
    private boolean isAnimating;
    private View leaderContainer;
    private TextView likeHint;
    private View modeMenuView;
    private TextView modeMenuViewHint;
    private View normalUserContainer;
    private BottomVoteIcon realHeartView;
    private TextView saveHint;
    private View saveView;
    private TextView shareHint;
    private View shareView;
    private TextView tipHint;
    private View tipView;
    TextView tvVoteCount;
    private View voteView;

    public interface BottomAnimationListener {
        void onAnimationFinished();
    }

    public FeedBottomLayout(Context context) {
        this(context, null);
    }

    public void setBottomAnimationListener(BottomAnimationListener bottomAnimationListener) {
        this.bottomAnimationListener = bottomAnimationListener;
    }

    public void updateVoteCountView(String str) {
        if (this.displayMode == 3) {
            findViewById(R.id.headline_vote_count).setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            ((TextView) findViewById(R.id.headline_vote_count)).setText(str);
        } else {
            findViewById(R.id.vote_count).setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            ((TextView) findViewById(R.id.vote_count)).setText(str);
        }
    }

    public FeedBottomLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void configureBottomBarClickListener(View.OnClickListener onClickListener) {
        this.shareView.setOnClickListener(onClickListener);
        this.tipView.setOnClickListener(onClickListener);
        this.saveView.setOnClickListener(onClickListener);
        this.voteView.setOnClickListener(onClickListener);
        this.goNextNomalView.setOnClickListener(onClickListener);
        this.goNextLeaderView.setOnClickListener(onClickListener);
        this.modeMenuView.setOnClickListener(onClickListener);
        this.featureView.setOnClickListener(onClickListener);
        this.broadcastView.setOnClickListener(onClickListener);
        this.btnHeadlineCommentContainer.setOnClickListener(onClickListener);
        this.btnHeadlineVoteContainer.setOnClickListener(onClickListener);
        this.btnHeadlineShareContainer.setOnClickListener(onClickListener);
        this.btnHeadlineMoreContainer.setOnClickListener(onClickListener);
    }

    public void hideFeatureButton() {
        View view = this.featureView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void setBottomLayoutDisplayMode(int i10) {
        this.displayMode = i10;
        if (i10 == 0) {
            this.normalUserContainer.setVisibility(0);
            this.leaderContainer.setVisibility(8);
            this.headlineViewerContainer.setVisibility(8);
        } else {
            if (i10 == 1 || i10 == 2) {
                this.normalUserContainer.setVisibility(8);
                this.leaderContainer.setVisibility(0);
                this.headlineViewerContainer.setVisibility(8);
                this.broadcastView.setVisibility(i10 != 1 ? 8 : 0);
                return;
            }
            if (i10 == 3) {
                this.normalUserContainer.setVisibility(8);
                this.leaderContainer.setVisibility(8);
                this.headlineViewerContainer.setVisibility(0);
            }
        }
    }

    public void showTipping(boolean z6) {
        if (this.displayMode == 0) {
            ViewUtils.show(this.normalUserContainer, R.id.bottom_share, !z6);
            ViewUtils.show(this.normalUserContainer, R.id.bottom_tipping, z6);
        }
    }

    public void startLikeAnimation(int i10) {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        new VoteAnimationHelper(getContext()).startAnimation(this.realHeartView, i10, new Callback<Boolean>() { // from class: com.narvii.widget.FeedBottomLayout.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                FeedBottomLayout.this.isAnimating = false;
                BottomAnimationListener bottomAnimationListener = FeedBottomLayout.this.bottomAnimationListener;
                if (bottomAnimationListener != null) {
                    bottomAnimationListener.onAnimationFinished();
                }
            }
        });
    }

    public void updateCommentView(int i10) {
        if (this.displayMode == 3) {
            findViewById(R.id.headline_comment_count).setVisibility(i10 > 0 ? 0 : 8);
            ((TextView) findViewById(R.id.headline_comment_count)).setText("" + i10);
        }
    }

    public void updateVoteIcon(int i10, boolean z6, int i11) {
        if (this.displayMode == 3) {
            BottomVoteIcon bottomVoteIcon = (BottomVoteIcon) findViewById(R.id.headline_vote_icon);
            bottomVoteIcon.setVotedValue(i10);
            findViewById(R.id.headline_vote_progress).setVisibility(z6 ? 0 : 8);
            bottomVoteIcon.setVisibility(z6 ? 4 : 0);
            updateVoteCountView(i11);
            return;
        }
        ((BottomVoteIcon) findViewById(R.id.vote_icon)).setVotedValue(i10);
        View viewFindViewById = findViewById(R.id.vote_progress);
        if (viewFindViewById == null || this.realHeartView == null) {
            return;
        }
        viewFindViewById.setVisibility(z6 ? 0 : 8);
        this.realHeartView.setVisibility(z6 ? 8 : 0);
        updateVoteCountView(i11);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.realHeartView = (BottomVoteIcon) findViewById(R.id.vote_icon);
        this.shareView = findViewById(R.id.bottom_share);
        this.tipView = findViewById(R.id.bottom_tipping);
        this.voteView = findViewById(R.id.bottom_vote);
        this.saveView = findViewById(R.id.bottom_save);
        this.tvVoteCount = (TextView) findViewById(R.id.vote_count);
        this.goNextNomalView = findViewById(R.id.bottom_go_next_normal);
        this.modeMenuView = findViewById(R.id.bottom_mod_menu);
        this.featureView = findViewById(R.id.bottom_feature);
        this.broadcastView = findViewById(R.id.bottom_broadcast);
        this.goNextLeaderView = findViewById(R.id.bottom_go_next_leader);
        this.modeMenuViewHint = (TextView) findViewById(R.id.bottom_mod_menu_hint);
        this.featureViewHint = (TextView) findViewById(R.id.bottom_feature_hint);
        this.broadcastViewHint = (TextView) findViewById(R.id.bottom_broadcast_hint);
        this.goNextHint = (TextView) findViewById(R.id.bottom_go_next_leader_hint);
        this.shareHint = (TextView) findViewById(R.id.bottom_share_normal_hint);
        this.tipHint = (TextView) findViewById(R.id.bottom_tipping_normal_hint);
        this.saveHint = (TextView) findViewById(R.id.bottom_bookmark_normal_hint);
        this.likeHint = (TextView) findViewById(R.id.bottom_vote_normal_hint);
        this.goNextNormalHint = (TextView) findViewById(R.id.bottom_go_next_normal_hint);
        this.normalUserContainer = findViewById(R.id.normal_user_container);
        this.leaderContainer = findViewById(R.id.leader_container);
        this.headlineViewerContainer = findViewById(R.id.headline_feed_detail_bottom_container);
        this.goNextNormalIcon = (TintButton) findViewById(R.id.next_icon_normal);
        this.goNextLeaderIcon = (TintButton) findViewById(R.id.next_icon_leader);
        this.headlineCommentIcon = (TintButton) findViewById(R.id.headline_comment_icon);
        this.healineShareIcon = (TintButton) findViewById(R.id.headline_share);
        this.healineMoreIcon = (TintButton) findViewById(R.id.headline_more);
        this.headlineBottomVoteIcon = (BottomVoteIcon) findViewById(R.id.headline_vote_icon);
        this.btnHeadlineCommentContainer = findViewById(R.id.healine_bottom_comment_container);
        this.btnHeadlineVoteContainer = findViewById(R.id.healine_bottom_vote_container);
        this.btnHeadlineMoreContainer = findViewById(R.id.healine_bottom_more_container);
        this.btnHeadlineShareContainer = findViewById(R.id.healine_bottom_share_container);
    }

    public void setDarkTheme(boolean z6) {
        int i10;
        int i11;
        int i12;
        int i13;
        Context context = getContext();
        if (z6) {
            i10 = R.color.selector_feed_bottom_text_dark;
        } else {
            i10 = R.color.selector_feed_bottom_text;
        }
        ColorStateList colorStateList = ContextCompat.getColorStateList(context, i10);
        this.goNextHint.setTextColor(colorStateList);
        this.modeMenuViewHint.setTextColor(colorStateList);
        this.featureViewHint.setTextColor(colorStateList);
        this.broadcastViewHint.setTextColor(colorStateList);
        this.tvVoteCount.setTextColor(colorStateList);
        this.shareHint.setTextColor(colorStateList);
        this.tipHint.setTextColor(colorStateList);
        this.saveHint.setTextColor(colorStateList);
        this.goNextNormalHint.setTextColor(colorStateList);
        this.likeHint.setTextColor(colorStateList);
        TintButton tintButton = this.goNextLeaderIcon;
        Context context2 = getContext();
        int i14 = R.color.selector_go_next_white;
        if (!z6) {
            i11 = R.color.selector_go_next_grey;
        } else {
            i11 = R.color.selector_go_next_white;
        }
        tintButton.setTintColor(ContextCompat.getColorStateList(context2, i11));
        TintButton tintButton2 = this.goNextNormalIcon;
        Context context3 = getContext();
        if (!z6) {
            i14 = R.color.selector_go_next_grey;
        }
        tintButton2.setTintColor(ContextCompat.getColorStateList(context3, i14));
        if (!z6) {
            i12 = R.color.selector_headline_bottom_grey;
        } else {
            i12 = R.color.selector_headline_bottom_white;
        }
        this.headlineCommentIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i12));
        this.healineShareIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i12));
        this.healineMoreIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i12));
        if (z6) {
            i13 = R.drawable.ic_bottom_vote_normal_dark;
        } else {
            i13 = R.drawable.ic_bottom_vote_normal;
        }
        this.headlineBottomVoteIcon.setVoteNormalId(i13);
        this.headlineBottomVoteIcon.setVotedId(R.drawable.ic_bottom_voted);
    }

    public void updateBottomView(int i10, boolean z6, int i11, int i12) {
        updateVoteIcon(i10, z6, i12);
        updateCommentView(i11);
    }

    public void updateVoteCountView(int i10) {
        String str = i10 + "";
        if (i10 > 1000) {
            str = Math.round(i10 / 1000.0f) + "K";
        } else if (i10 <= 0) {
            str = null;
        }
        updateVoteCountView(str);
    }
}
