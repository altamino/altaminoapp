package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentOptionMenuBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView actionbarOps;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentOptionMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentOptionMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_option_menu, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentOptionMenuBinding(@NonNull FrameLayout frameLayout, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = frameLayout;
        this.actionbarOps = fontAwesomeView;
    }

    @NonNull
    public static FragmentOptionMenuBinding bind(@NonNull View view) {
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.actionbar_ops);
        if (fontAwesomeView != null) {
            return new FragmentOptionMenuBinding((FrameLayout) view, fontAwesomeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.actionbar_ops)));
    }
}
