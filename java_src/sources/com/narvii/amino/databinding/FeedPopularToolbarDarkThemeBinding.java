package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedPopularToolbarDarkThemeBinding implements ViewBinding {

    @NonNull
    public final LinearLayout feedToolbarComment;

    @NonNull
    public final TextView feedToolbarCommentCount;

    @NonNull
    public final TintButton feedToolbarCommentIcon;

    @NonNull
    public final LinearLayout feedToolbarShare;

    @NonNull
    public final TintButton feedToolbarShareIcon;

    @NonNull
    public final LinearLayout feedToolbarVote;

    @NonNull
    public final TextView feedToolbarVoteCount;

    @NonNull
    public final VoteIcon feedToolbarVoteIcon;

    @NonNull
    public final SpinningView feedToolbarVoteProgress;

    @NonNull
    private final FeedToolbarLayout rootView;

    @NonNull
    public static FeedPopularToolbarDarkThemeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedToolbarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedPopularToolbarDarkThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_popular_toolbar_dark_theme, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedPopularToolbarDarkThemeBinding(@NonNull FeedToolbarLayout feedToolbarLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = feedToolbarLayout;
        this.feedToolbarComment = linearLayout;
        this.feedToolbarCommentCount = textView;
        this.feedToolbarCommentIcon = tintButton;
        this.feedToolbarShare = linearLayout2;
        this.feedToolbarShareIcon = tintButton2;
        this.feedToolbarVote = linearLayout3;
        this.feedToolbarVoteCount = textView2;
        this.feedToolbarVoteIcon = voteIcon;
        this.feedToolbarVoteProgress = spinningView;
    }

    @NonNull
    public static FeedPopularToolbarDarkThemeBinding bind(@NonNull View view) {
        int i10 = R.id.feed_toolbar_comment;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.feed_toolbar_comment);
        if (linearLayout != null) {
            i10 = R.id.feed_toolbar_comment_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.feed_toolbar_comment_count);
            if (textView != null) {
                i10 = R.id.feed_toolbar_comment_icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.feed_toolbar_comment_icon);
                if (tintButton != null) {
                    i10 = R.id.feed_toolbar_share;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.feed_toolbar_share);
                    if (linearLayout2 != null) {
                        i10 = R.id.feed_toolbar_share_icon;
                        TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.feed_toolbar_share_icon);
                        if (tintButton2 != null) {
                            i10 = R.id.feed_toolbar_vote;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.feed_toolbar_vote);
                            if (linearLayout3 != null) {
                                i10 = R.id.feed_toolbar_vote_count;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.feed_toolbar_vote_count);
                                if (textView2 != null) {
                                    i10 = R.id.feed_toolbar_vote_icon;
                                    VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.feed_toolbar_vote_icon);
                                    if (voteIcon != null) {
                                        i10 = R.id.feed_toolbar_vote_progress;
                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.feed_toolbar_vote_progress);
                                        if (spinningView != null) {
                                            return new FeedPopularToolbarDarkThemeBinding((FeedToolbarLayout) view, linearLayout, textView, tintButton, linearLayout2, tintButton2, linearLayout3, textView2, voteIcon, spinningView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
