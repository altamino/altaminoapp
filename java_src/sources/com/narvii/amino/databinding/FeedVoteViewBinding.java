package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedVoteViewBinding implements ViewBinding {

    @NonNull
    public final VoteIcon feedVoteFrown;

    @NonNull
    public final VoteIcon feedVoteHeart;

    @NonNull
    public final VoteIcon feedVoteSmile;

    @NonNull
    public final VoteIcon feedVoteSurprise;

    @NonNull
    public final VoteIcon feedVoteUndecided;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FeedVoteViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedVoteViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_vote_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedVoteViewBinding(@NonNull LinearLayout linearLayout, @NonNull VoteIcon voteIcon, @NonNull VoteIcon voteIcon2, @NonNull VoteIcon voteIcon3, @NonNull VoteIcon voteIcon4, @NonNull VoteIcon voteIcon5) {
        this.rootView = linearLayout;
        this.feedVoteFrown = voteIcon;
        this.feedVoteHeart = voteIcon2;
        this.feedVoteSmile = voteIcon3;
        this.feedVoteSurprise = voteIcon4;
        this.feedVoteUndecided = voteIcon5;
    }

    @NonNull
    public static FeedVoteViewBinding bind(@NonNull View view) {
        int i10 = R.id.feed_vote_frown;
        VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.feed_vote_frown);
        if (voteIcon != null) {
            i10 = R.id.feed_vote_heart;
            VoteIcon voteIcon2 = (VoteIcon) ViewBindings.a(view, R.id.feed_vote_heart);
            if (voteIcon2 != null) {
                i10 = R.id.feed_vote_smile;
                VoteIcon voteIcon3 = (VoteIcon) ViewBindings.a(view, R.id.feed_vote_smile);
                if (voteIcon3 != null) {
                    i10 = R.id.feed_vote_surprise;
                    VoteIcon voteIcon4 = (VoteIcon) ViewBindings.a(view, R.id.feed_vote_surprise);
                    if (voteIcon4 != null) {
                        i10 = R.id.feed_vote_undecided;
                        VoteIcon voteIcon5 = (VoteIcon) ViewBindings.a(view, R.id.feed_vote_undecided);
                        if (voteIcon5 != null) {
                            return new FeedVoteViewBinding((LinearLayout) view, voteIcon, voteIcon2, voteIcon3, voteIcon4, voteIcon5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
