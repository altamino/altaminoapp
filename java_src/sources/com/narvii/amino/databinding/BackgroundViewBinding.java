package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class BackgroundViewBinding implements ViewBinding {

    @NonNull
    public final NVImageView backgroundImage;

    @NonNull
    public final NVImageView backgroundOverlay;

    @NonNull
    public final RealtimeBlurView realtimeBlurView;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BackgroundViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.background_view, viewGroup);
        return bind(viewGroup);
    }

    private BackgroundViewBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull RealtimeBlurView realtimeBlurView) {
        this.rootView = view;
        this.backgroundImage = nVImageView;
        this.backgroundOverlay = nVImageView2;
        this.realtimeBlurView = realtimeBlurView;
    }

    @NonNull
    public static BackgroundViewBinding bind(@NonNull View view) {
        int i10 = R.id.background_image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background_image);
        if (nVImageView != null) {
            i10 = R.id.background_overlay;
            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.background_overlay);
            if (nVImageView2 != null) {
                i10 = R.id.realtime_blur_view;
                RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.realtime_blur_view);
                if (realtimeBlurView != null) {
                    return new BackgroundViewBinding(view, nVImageView, nVImageView2, realtimeBlurView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
