package com.narvii.lib.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes2.dex */
public final class ListLayoutBinding implements ViewBinding {

    @NonNull
    public final NVThemeFrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static ListLayoutBinding bind(@NonNull View view) {
        NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) view;
        int i10 = R.id.progress;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
        if (spinningView != null) {
            i10 = com.narvii.lib.R.id.video_overlay;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                return new ListLayoutBinding(nVThemeFrameLayout, nVThemeFrameLayout, spinningView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(com.narvii.lib.R.layout.list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListLayoutBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVThemeFrameLayout nVThemeFrameLayout2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeFrameLayout;
        this.listFrame = nVThemeFrameLayout2;
        this.progress = spinningView;
        this.videoOverlay = frameLayout;
    }
}
