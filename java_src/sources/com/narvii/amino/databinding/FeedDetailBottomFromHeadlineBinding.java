package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BottomVoteIcon;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class FeedDetailBottomFromHeadlineBinding implements ViewBinding {

    @NonNull
    public final TextView headlineCommentCount;

    @NonNull
    public final TintButton headlineCommentIcon;

    @NonNull
    public final LinearLayout headlineFeedDetailBottomContainer;

    @NonNull
    public final TintButton headlineMore;

    @NonNull
    public final TintButton headlineShare;

    @NonNull
    public final TextView headlineVoteCount;

    @NonNull
    public final BottomVoteIcon headlineVoteIcon;

    @NonNull
    public final SpinningView headlineVoteProgress;

    @NonNull
    public final FrameLayout healineBottomCommentContainer;

    @NonNull
    public final FrameLayout healineBottomMoreContainer;

    @NonNull
    public final FrameLayout healineBottomShareContainer;

    @NonNull
    public final FrameLayout healineBottomVoteContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FeedDetailBottomFromHeadlineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDetailBottomFromHeadlineBinding bind(@NonNull View view) {
        int i10 = R.id.headline_comment_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.headline_comment_count);
        if (textView != null) {
            i10 = R.id.headline_comment_icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.headline_comment_icon);
            if (tintButton != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i10 = R.id.headline_more;
                TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.headline_more);
                if (tintButton2 != null) {
                    i10 = R.id.headline_share;
                    TintButton tintButton3 = (TintButton) ViewBindings.a(view, R.id.headline_share);
                    if (tintButton3 != null) {
                        i10 = R.id.headline_vote_count;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.headline_vote_count);
                        if (textView2 != null) {
                            i10 = R.id.headline_vote_icon;
                            BottomVoteIcon bottomVoteIcon = (BottomVoteIcon) ViewBindings.a(view, R.id.headline_vote_icon);
                            if (bottomVoteIcon != null) {
                                i10 = R.id.headline_vote_progress;
                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.headline_vote_progress);
                                if (spinningView != null) {
                                    i10 = R.id.healine_bottom_comment_container;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.healine_bottom_comment_container);
                                    if (frameLayout != null) {
                                        i10 = R.id.healine_bottom_more_container;
                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.healine_bottom_more_container);
                                        if (frameLayout2 != null) {
                                            i10 = R.id.healine_bottom_share_container;
                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.healine_bottom_share_container);
                                            if (frameLayout3 != null) {
                                                i10 = R.id.healine_bottom_vote_container;
                                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.healine_bottom_vote_container);
                                                if (frameLayout4 != null) {
                                                    return new FeedDetailBottomFromHeadlineBinding(linearLayout, textView, tintButton, linearLayout, tintButton2, tintButton3, textView2, bottomVoteIcon, spinningView, frameLayout, frameLayout2, frameLayout3, frameLayout4);
                                                }
                                            }
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

    @NonNull
    public static FeedDetailBottomFromHeadlineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_detail_bottom_from_headline, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedDetailBottomFromHeadlineBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton2, @NonNull TintButton tintButton3, @NonNull TextView textView2, @NonNull BottomVoteIcon bottomVoteIcon, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4) {
        this.rootView = linearLayout;
        this.headlineCommentCount = textView;
        this.headlineCommentIcon = tintButton;
        this.headlineFeedDetailBottomContainer = linearLayout2;
        this.headlineMore = tintButton2;
        this.headlineShare = tintButton3;
        this.headlineVoteCount = textView2;
        this.headlineVoteIcon = bottomVoteIcon;
        this.headlineVoteProgress = spinningView;
        this.healineBottomCommentContainer = frameLayout;
        this.healineBottomMoreContainer = frameLayout2;
        this.healineBottomShareContainer = frameLayout3;
        this.healineBottomVoteContainer = frameLayout4;
    }
}
