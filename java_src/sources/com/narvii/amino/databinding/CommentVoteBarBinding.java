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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes6.dex */
public final class CommentVoteBarBinding implements ViewBinding {

    @NonNull
    public final LinearLayout commentVotes;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final AutoSizingTextView voteCount;

    @NonNull
    public final FontAwesomeView voteDown;

    @NonNull
    public final SpinningView voteProgress;

    @NonNull
    public final FontAwesomeView voteUp;

    @NonNull
    public static CommentVoteBarBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.vote_count;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.vote_count);
        if (autoSizingTextView != null) {
            i10 = R.id.vote_down;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.vote_down);
            if (fontAwesomeView != null) {
                i10 = R.id.vote_progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                if (spinningView != null) {
                    i10 = R.id.vote_up;
                    FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.vote_up);
                    if (fontAwesomeView2 != null) {
                        return new CommentVoteBarBinding(linearLayout, linearLayout, autoSizingTextView, fontAwesomeView, spinningView, fontAwesomeView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static CommentVoteBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommentVoteBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.comment_vote_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommentVoteBarBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView, @NonNull FontAwesomeView fontAwesomeView2) {
        this.rootView = linearLayout;
        this.commentVotes = linearLayout2;
        this.voteCount = autoSizingTextView;
        this.voteDown = fontAwesomeView;
        this.voteProgress = spinningView;
        this.voteUp = fontAwesomeView2;
    }
}
