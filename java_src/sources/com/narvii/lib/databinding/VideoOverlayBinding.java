package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.EasyButton;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class VideoOverlayBinding implements ViewBinding {

    @NonNull
    public final TextView debugVideoStatus;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final View videoOverlayBg;

    @NonNull
    public final FrameLayout videoOverlayControls;

    @NonNull
    public final FrameLayout videoOverlayFrame;

    @NonNull
    public final SpinningView videoOverlayLoading;

    @NonNull
    public final EasyButton videoOverlayRightCornerVolume;

    @NonNull
    public final EasyButton videoOverlayShare;

    @NonNull
    public final EasyButton videoOverlayVolume;

    @NonNull
    public static VideoOverlayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VideoOverlayBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.debug_video_status;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null && (viewA = ViewBindings.a(view, (i10 = R.id.video_overlay_bg))) != null) {
            i10 = R.id.video_overlay_controls;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.video_overlay_frame;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R.id.video_overlay_loading;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                    if (spinningView != null) {
                        i10 = R.id.video_overlay_right_corner_volume;
                        EasyButton easyButton = (EasyButton) ViewBindings.a(view, i10);
                        if (easyButton != null) {
                            i10 = R.id.video_overlay_share;
                            EasyButton easyButton2 = (EasyButton) ViewBindings.a(view, i10);
                            if (easyButton2 != null) {
                                i10 = R.id.video_overlay_volume;
                                EasyButton easyButton3 = (EasyButton) ViewBindings.a(view, i10);
                                if (easyButton3 != null) {
                                    return new VideoOverlayBinding((FrameLayout) view, textView, viewA, frameLayout, frameLayout2, spinningView, easyButton, easyButton2, easyButton3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static VideoOverlayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.video_overlay, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VideoOverlayBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull View view, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull SpinningView spinningView, @NonNull EasyButton easyButton, @NonNull EasyButton easyButton2, @NonNull EasyButton easyButton3) {
        this.rootView = frameLayout;
        this.debugVideoStatus = textView;
        this.videoOverlayBg = view;
        this.videoOverlayControls = frameLayout2;
        this.videoOverlayFrame = frameLayout3;
        this.videoOverlayLoading = spinningView;
        this.videoOverlayRightCornerVolume = easyButton;
        this.videoOverlayShare = easyButton2;
        this.videoOverlayVolume = easyButton3;
    }
}
