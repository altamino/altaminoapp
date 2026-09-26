package com.narvii.amino.databinding;

import android.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.widget.HomeFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class HomeListLayoutBinding implements ViewBinding {

    @NonNull
    public final HomeFrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final HomeFrameLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static HomeListLayoutBinding bind(@NonNull View view) {
        HomeFrameLayout homeFrameLayout = (HomeFrameLayout) view;
        int i10 = R.id.progress;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
        if (spinningView != null) {
            i10 = com.narvii.amino.master.R.id.video_overlay;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, com.narvii.amino.master.R.id.video_overlay);
            if (frameLayout != null) {
                return new HomeListLayoutBinding(homeFrameLayout, homeFrameLayout, spinningView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static HomeListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HomeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(com.narvii.amino.master.R.layout.home_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HomeListLayoutBinding(@NonNull HomeFrameLayout homeFrameLayout, @NonNull HomeFrameLayout homeFrameLayout2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout) {
        this.rootView = homeFrameLayout;
        this.listFrame = homeFrameLayout2;
        this.progress = spinningView;
        this.videoOverlay = frameLayout;
    }
}
