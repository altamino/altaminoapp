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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class EmptyCommunityChatBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static EmptyCommunityChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EmptyCommunityChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.empty_community_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EmptyCommunityChatBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.emptyRetry = fontAwesomeView;
    }

    @NonNull
    public static EmptyCommunityChatBinding bind(@NonNull View view) {
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            return new EmptyCommunityChatBinding((LinearLayout) view, fontAwesomeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.empty_retry)));
    }
}
