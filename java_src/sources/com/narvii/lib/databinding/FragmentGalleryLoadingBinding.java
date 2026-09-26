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

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentGalleryLoadingBinding implements ViewBinding {

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentGalleryLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGalleryLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_gallery_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentGalleryLoadingBinding(@NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.progress = spinningView;
    }

    @NonNull
    public static FragmentGalleryLoadingBinding bind(@NonNull View view) {
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
        if (spinningView != null) {
            return new FragmentGalleryLoadingBinding((FrameLayout) view, spinningView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(android.R.id.progress)));
    }
}
