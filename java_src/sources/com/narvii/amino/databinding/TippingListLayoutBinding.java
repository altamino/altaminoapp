package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class TippingListLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout FrameLayoutRoot;

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final FrameLayout bottomContainer;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static TippingListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingListLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout4) {
        this.rootView = linearLayout;
        this.FrameLayoutRoot = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.background = fullscreenBackgroundView;
        this.bottomContainer = frameLayout2;
        this.listFrame = frameLayout3;
        this.progress = spinningView;
        this.videoOverlay = frameLayout4;
    }

    @NonNull
    public static TippingListLayoutBinding bind(@NonNull View view) {
        int i10 = R.id._frame_layout_root;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id._frame_layout_root);
        if (frameLayout != null) {
            i10 = R.id.action_bar_overlay;
            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
            if (overlayListPlaceholder != null) {
                i10 = R.id.background;
                FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
                if (fullscreenBackgroundView != null) {
                    i10 = R.id.bottom_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bottom_container);
                    if (frameLayout2 != null) {
                        i10 = R.id.list_frame;
                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.list_frame);
                        if (frameLayout3 != null) {
                            i10 = android.R.id.progress;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                            if (spinningView != null) {
                                i10 = R.id.video_overlay;
                                FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.video_overlay);
                                if (frameLayout4 != null) {
                                    return new TippingListLayoutBinding((LinearLayout) view, frameLayout, overlayListPlaceholder, fullscreenBackgroundView, frameLayout2, frameLayout3, spinningView, frameLayout4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
