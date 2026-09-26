package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.crop.GestureCropImageView;
import com.narvii.crop.OverlayView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class UcropViewBinding implements ViewBinding {

    @NonNull
    public final GestureCropImageView imageViewCrop;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final OverlayView viewOverlay;

    @NonNull
    public static UcropViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UcropViewBinding bind(@NonNull View view) {
        int i10 = R.id.image_view_crop;
        GestureCropImageView gestureCropImageView = (GestureCropImageView) ViewBindings.a(view, i10);
        if (gestureCropImageView != null) {
            i10 = R.id.view_overlay;
            OverlayView overlayView = (OverlayView) ViewBindings.a(view, i10);
            if (overlayView != null) {
                return new UcropViewBinding((FlexLayout) view, gestureCropImageView, overlayView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static UcropViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ucrop_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UcropViewBinding(@NonNull FlexLayout flexLayout, @NonNull GestureCropImageView gestureCropImageView, @NonNull OverlayView overlayView) {
        this.rootView = flexLayout;
        this.imageViewCrop = gestureCropImageView;
        this.viewOverlay = overlayView;
    }
}
