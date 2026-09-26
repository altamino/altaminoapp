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
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.FullscreenBackgroundView;

/* JADX INFO: loaded from: classes7.dex */
public final class LayoutBioDetailBinding implements ViewBinding {

    @NonNull
    public final FrameLayout FrameLayoutRoot;

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final OverlayListPlaceholder fakeActionBar;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LayoutBioDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutBioDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_bio_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutBioDetailBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull OverlayListPlaceholder overlayListPlaceholder2, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.FrameLayoutRoot = frameLayout2;
        this.actionBarOverlay = overlayListPlaceholder;
        this.background = fullscreenBackgroundView;
        this.disabledBar = detailDisabledBarBinding;
        this.fakeActionBar = overlayListPlaceholder2;
        this.masterBackground = frameLayout3;
    }

    @NonNull
    public static LayoutBioDetailBinding bind(@NonNull View view) {
        int i10 = R.id._frame_layout_root;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id._frame_layout_root);
        if (frameLayout != null) {
            i10 = R.id.action_bar_overlay;
            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
            if (overlayListPlaceholder != null) {
                i10 = R.id.background;
                FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
                if (fullscreenBackgroundView != null) {
                    i10 = R.id.disabled_bar;
                    View viewA = ViewBindings.a(view, R.id.disabled_bar);
                    if (viewA != null) {
                        DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                        i10 = R.id.fake_action_bar;
                        OverlayListPlaceholder overlayListPlaceholder2 = (OverlayListPlaceholder) ViewBindings.a(view, R.id.fake_action_bar);
                        if (overlayListPlaceholder2 != null) {
                            i10 = R.id.master_background;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                            if (frameLayout2 != null) {
                                return new LayoutBioDetailBinding((FrameLayout) view, frameLayout, overlayListPlaceholder, fullscreenBackgroundView, detailDisabledBarBindingBind, overlayListPlaceholder2, frameLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
