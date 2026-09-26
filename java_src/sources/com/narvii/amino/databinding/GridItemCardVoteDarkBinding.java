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
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes10.dex */
public final class GridItemCardVoteDarkBinding implements ViewBinding {

    @NonNull
    public final LinearLayout gridItemVote;

    @NonNull
    public final TextView gridItemVoteCount;

    @NonNull
    public final VoteIcon gridItemVoteIcon;

    @NonNull
    public final SpinningView gridItemVoteProgress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static GridItemCardVoteDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GridItemCardVoteDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.grid_item_card_vote_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GridItemCardVoteDarkBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.gridItemVote = linearLayout2;
        this.gridItemVoteCount = textView;
        this.gridItemVoteIcon = voteIcon;
        this.gridItemVoteProgress = spinningView;
    }

    @NonNull
    public static GridItemCardVoteDarkBinding bind(@NonNull View view) {
        int i10 = R.id.grid_item_vote;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.grid_item_vote);
        if (linearLayout != null) {
            i10 = R.id.grid_item_vote_count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.grid_item_vote_count);
            if (textView != null) {
                i10 = R.id.grid_item_vote_icon;
                VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.grid_item_vote_icon);
                if (voteIcon != null) {
                    i10 = R.id.grid_item_vote_progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.grid_item_vote_progress);
                    if (spinningView != null) {
                        return new GridItemCardVoteDarkBinding((LinearLayout) view, linearLayout, textView, voteIcon, spinningView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
