package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes6.dex */
public final class DetailVoteToolbarBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FontAwesomeView voteActions;

    @NonNull
    public final Button voteAdd;

    @NonNull
    public final Button voteView;

    @NonNull
    public static DetailVoteToolbarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailVoteToolbarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_vote_toolbar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailVoteToolbarBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull Button button, @NonNull Button button2) {
        this.rootView = linearLayout;
        this.voteActions = fontAwesomeView;
        this.voteAdd = button;
        this.voteView = button2;
    }

    @NonNull
    public static DetailVoteToolbarBinding bind(@NonNull View view) {
        int i10 = R.id.vote_actions;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.vote_actions);
        if (fontAwesomeView != null) {
            i10 = R.id.vote_add;
            Button button = (Button) ViewBindings.a(view, R.id.vote_add);
            if (button != null) {
                i10 = R.id.vote_view;
                Button button2 = (Button) ViewBindings.a(view, R.id.vote_view);
                if (button2 != null) {
                    return new DetailVoteToolbarBinding((LinearLayout) view, fontAwesomeView, button, button2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
