package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class RtcIndicatorContainerBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView rtcIndicator;

    @NonNull
    public final FrameLayout rtcIndicatorContainer;

    @NonNull
    public final ImageView videoIndicator;

    @NonNull
    public static RtcIndicatorContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RtcIndicatorContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rtc_indicator_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RtcIndicatorContainerBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.rtcIndicator = nVImageView;
        this.rtcIndicatorContainer = frameLayout2;
        this.videoIndicator = imageView;
    }

    @NonNull
    public static RtcIndicatorContainerBinding bind(@NonNull View view) {
        int i10 = R.id.rtc_indicator;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.rtc_indicator);
        if (nVImageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.video_indicator);
            if (imageView != null) {
                return new RtcIndicatorContainerBinding(frameLayout, nVImageView, frameLayout, imageView);
            }
            i10 = R.id.video_indicator;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
