package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.poll.PollOptionListLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailVoteOptionsBinding implements ViewBinding {

    @NonNull
    public final PollOptionListLayout pollOptionList;

    @NonNull
    public final TextView pollText;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailVoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailVoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_vote_options, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailVoteOptionsBinding(@NonNull FrameLayout frameLayout, @NonNull PollOptionListLayout pollOptionListLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.pollOptionList = pollOptionListLayout;
        this.pollText = textView;
    }

    @NonNull
    public static DetailVoteOptionsBinding bind(@NonNull View view) {
        int i10 = R.id.poll_option_list;
        PollOptionListLayout pollOptionListLayout = (PollOptionListLayout) ViewBindings.a(view, R.id.poll_option_list);
        if (pollOptionListLayout != null) {
            i10 = R.id.poll_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.poll_text);
            if (textView != null) {
                return new DetailVoteOptionsBinding((FrameLayout) view, pollOptionListLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
