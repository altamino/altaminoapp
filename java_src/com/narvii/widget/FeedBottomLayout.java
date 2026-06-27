package com.narvii.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.util.Callback;
import com.narvii.util.ViewUtils;

/* loaded from: classes3.dex */
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

    public FeedBottomLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setBottomAnimationListener(BottomAnimationListener bottomAnimationListener) {
        this.bottomAnimationListener = bottomAnimationListener;
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

    public void setBottomLayoutDisplayMode(int i) {
        this.displayMode = i;
        if (i == 0) {
            this.normalUserContainer.setVisibility(0);
            this.leaderContainer.setVisibility(8);
            this.headlineViewerContainer.setVisibility(8);
        } else {
            if (i == 1 || i == 2) {
                this.normalUserContainer.setVisibility(8);
                this.leaderContainer.setVisibility(0);
                this.headlineViewerContainer.setVisibility(8);
                this.broadcastView.setVisibility(i != 1 ? 8 : 0);
                return;
            }
            if (i == 3) {
                this.normalUserContainer.setVisibility(8);
                this.leaderContainer.setVisibility(8);
                this.headlineViewerContainer.setVisibility(0);
            }
        }
    }

    public void startLikeAnimation(int i) {
        if (this.isAnimating) {
            return;
        }
        this.isAnimating = true;
        new VoteAnimationHelper(getContext()).startAnimation(this.realHeartView, i, new Callback<Boolean>() { // from class: com.narvii.widget.FeedBottomLayout.1
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

    public void updateVoteIcon(int i, boolean z, int i2) {
        if (this.displayMode == 3) {
            BottomVoteIcon bottomVoteIcon = (BottomVoteIcon) findViewById(R.id.headline_vote_icon);
            bottomVoteIcon.setVotedValue(i);
            findViewById(R.id.headline_vote_progress).setVisibility(z ? 0 : 8);
            bottomVoteIcon.setVisibility(z ? 4 : 0);
            updateVoteCountView(i2);
            return;
        }
        ((BottomVoteIcon) findViewById(R.id.vote_icon)).setVotedValue(i);
        View viewFindViewById = findViewById(R.id.vote_progress);
        if (viewFindViewById == null || this.realHeartView == null) {
            return;
        }
        viewFindViewById.setVisibility(z ? 0 : 8);
        this.realHeartView.setVisibility(z ? 8 : 0);
        updateVoteCountView(i2);
    }

    public void showTipping(boolean z) {
        if (this.displayMode == 0) {
            ViewUtils.show(this.normalUserContainer, R.id.bottom_share, !z);
            ViewUtils.show(this.normalUserContainer, R.id.bottom_tipping, z);
        }
    }

    public void updateCommentView(int i) {
        if (this.displayMode == 3) {
            findViewById(R.id.headline_comment_count).setVisibility(i > 0 ? 0 : 8);
            ((TextView) findViewById(R.id.headline_comment_count)).setText("" + i);
        }
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

    public void updateVoteCountView(int i) {
        String str = i + "";
        if (i > 1000) {
            str = Math.round(i / 1000.0f) + "K";
        } else if (i <= 0) {
            str = null;
        }
        updateVoteCountView(str);
    }

    public void updateBottomView(int i, boolean z, int i2, int i3) {
        updateVoteIcon(i, z, i3);
        updateCommentView(i2);
    }

    public void setDarkTheme(boolean z) {
        ColorStateList colorStateList = ContextCompat.getColorStateList(getContext(), z ? R.color.selector_feed_bottom_text_dark : R.color.selector_feed_bottom_text);
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
        Context context = getContext();
        int i = R.color.selector_go_next_grey;
        tintButton.setTintColor(ContextCompat.getColorStateList(context, !z ? R.color.selector_go_next_grey : R.color.selector_go_next_white));
        TintButton tintButton2 = this.goNextNormalIcon;
        Context context2 = getContext();
        if (z) {
            i = R.color.selector_go_next_white;
        }
        tintButton2.setTintColor(ContextCompat.getColorStateList(context2, i));
        int i2 = !z ? R.color.selector_headline_bottom_grey : R.color.selector_headline_bottom_white;
        this.headlineCommentIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i2));
        this.healineShareIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i2));
        this.healineMoreIcon.setTintColor(ContextCompat.getColorStateList(getContext(), i2));
        this.headlineBottomVoteIcon.setVoteNormalId(z ? R.drawable.ic_bottom_vote_normal_dark : R.drawable.ic_bottom_vote_normal);
        this.headlineBottomVoteIcon.setVotedId(R.drawable.ic_bottom_voted);
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
}
