package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentWrapperBinding implements ViewBinding {

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout wrapperFrame;

    @NonNull
    public static FragmentWrapperBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentWrapperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_wrapper, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentWrapperBinding(@NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.progress = spinningView;
        this.wrapperFrame = frameLayout2;
    }

    @NonNull
    public static FragmentWrapperBinding bind(@NonNull View view) {
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
        if (spinningView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new FragmentWrapperBinding(frameLayout, spinningView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(android.R.id.progress)));
    }
}
