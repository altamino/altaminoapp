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
import com.narvii.livelayer.BackgroundBlurWithTopRadiusLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SwipeableLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentLiveLayerBinding implements ViewBinding {

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final SwipeableLayout frame;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView themeBackground;

    @NonNull
    public final BackgroundBlurWithTopRadiusLayout themeBackgroundWrapper;

    @NonNull
    public static FragmentLiveLayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLiveLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_live_layer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLiveLayerBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull SwipeableLayout swipeableLayout, @NonNull NVImageView nVImageView, @NonNull BackgroundBlurWithTopRadiusLayout backgroundBlurWithTopRadiusLayout) {
        this.rootView = frameLayout;
        this.clickRemoveMask = view;
        this.frame = swipeableLayout;
        this.themeBackground = nVImageView;
        this.themeBackgroundWrapper = backgroundBlurWithTopRadiusLayout;
    }

    @NonNull
    public static FragmentLiveLayerBinding bind(@NonNull View view) {
        int i10 = R.id.click_remove_mask;
        View viewA = ViewBindings.a(view, R.id.click_remove_mask);
        if (viewA != null) {
            i10 = R.id.frame;
            SwipeableLayout swipeableLayout = (SwipeableLayout) ViewBindings.a(view, R.id.frame);
            if (swipeableLayout != null) {
                i10 = R.id.theme_background;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.theme_background);
                if (nVImageView != null) {
                    i10 = R.id.theme_background_wrapper;
                    BackgroundBlurWithTopRadiusLayout backgroundBlurWithTopRadiusLayout = (BackgroundBlurWithTopRadiusLayout) ViewBindings.a(view, R.id.theme_background_wrapper);
                    if (backgroundBlurWithTopRadiusLayout != null) {
                        return new FragmentLiveLayerBinding((FrameLayout) view, viewA, swipeableLayout, nVImageView, backgroundBlurWithTopRadiusLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
