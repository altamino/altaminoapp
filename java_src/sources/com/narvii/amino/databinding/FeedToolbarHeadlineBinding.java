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
import com.narvii.headlines.HeadlineFeatureLabel;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes4.dex */
public final class FeedToolbarHeadlineBinding implements ViewBinding {

    @NonNull
    public final HeadlineFeatureLabel featureTag;

    @NonNull
    public final LinearLayout feedToolbarComment;

    @NonNull
    public final TextView feedToolbarCommentCount;

    @NonNull
    public final TintButton feedToolbarCommentIcon;

    @NonNull
    public final LinearLayout feedToolbarVote;

    @NonNull
    public final TextView feedToolbarVoteCount;

    @NonNull
    public final VoteIcon feedToolbarVoteIcon;

    @NonNull
    public final SpinningView feedToolbarVoteProgress;

    @NonNull
    public final TintButton headlineFeedOptions;

    @NonNull
    private final FeedToolbarLayout rootView;

    @NonNull
    public static FeedToolbarHeadlineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedToolbarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedToolbarHeadlineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_toolbar_headline, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedToolbarHeadlineBinding(@NonNull FeedToolbarLayout feedToolbarLayout, @NonNull HeadlineFeatureLabel headlineFeatureLabel, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView, @NonNull TintButton tintButton2) {
        this.rootView = feedToolbarLayout;
        this.featureTag = headlineFeatureLabel;
        this.feedToolbarComment = linearLayout;
        this.feedToolbarCommentCount = textView;
        this.feedToolbarCommentIcon = tintButton;
        this.feedToolbarVote = linearLayout2;
        this.feedToolbarVoteCount = textView2;
        this.feedToolbarVoteIcon = voteIcon;
        this.feedToolbarVoteProgress = spinningView;
        this.headlineFeedOptions = tintButton2;
    }

    @NonNull
    public static FeedToolbarHeadlineBinding bind(@NonNull View view) {
        int i10 = R.id.feature_tag;
        HeadlineFeatureLabel headlineFeatureLabel = (HeadlineFeatureLabel) ViewBindings.a(view, R.id.feature_tag);
        if (headlineFeatureLabel != null) {
            i10 = R.id.feed_toolbar_comment;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.feed_toolbar_comment);
            if (linearLayout != null) {
                i10 = R.id.feed_toolbar_comment_count;
                TextView textView = (TextView) ViewBindings.a(view, R.id.feed_toolbar_comment_count);
                if (textView != null) {
                    i10 = R.id.feed_toolbar_comment_icon;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.feed_toolbar_comment_icon);
                    if (tintButton != null) {
                        i10 = R.id.feed_toolbar_vote;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.feed_toolbar_vote);
                        if (linearLayout2 != null) {
                            i10 = R.id.feed_toolbar_vote_count;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.feed_toolbar_vote_count);
                            if (textView2 != null) {
                                i10 = R.id.feed_toolbar_vote_icon;
                                VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.feed_toolbar_vote_icon);
                                if (voteIcon != null) {
                                    i10 = R.id.feed_toolbar_vote_progress;
                                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.feed_toolbar_vote_progress);
                                    if (spinningView != null) {
                                        i10 = R.id.headline_feed_options;
                                        TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.headline_feed_options);
                                        if (tintButton2 != null) {
                                            return new FeedToolbarHeadlineBinding((FeedToolbarLayout) view, headlineFeatureLabel, linearLayout, textView, tintButton, linearLayout2, textView2, voteIcon, spinningView, tintButton2);
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
