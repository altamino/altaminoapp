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
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class BaseVideoPlayContainerBinding implements ViewBinding {

    @NonNull
    public final LinearLayout addVideoLayout;

    @NonNull
    public final FrameLayout glVideoContainer;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView thumbnail;

    @NonNull
    public final SRVideoController videoController;

    @NonNull
    public final FrameLayout videoPlayOverlay;

    @NonNull
    public static BaseVideoPlayContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BaseVideoPlayContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.base_video_play_container, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BaseVideoPlayContainerBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull NVImageView nVImageView, @NonNull SRVideoController sRVideoController, @NonNull FrameLayout frameLayout3) {
        this.rootView = frameLayout;
        this.addVideoLayout = linearLayout;
        this.glVideoContainer = frameLayout2;
        this.thumbnail = nVImageView;
        this.videoController = sRVideoController;
        this.videoPlayOverlay = frameLayout3;
    }

    @NonNull
    public static BaseVideoPlayContainerBinding bind(@NonNull View view) {
        int i10 = R.id.add_video_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.add_video_layout);
        if (linearLayout != null) {
            i10 = R.id.gl_video_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.gl_video_container);
            if (frameLayout != null) {
                i10 = R.id.thumbnail;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.thumbnail);
                if (nVImageView != null) {
                    i10 = R.id.video_controller;
                    SRVideoController sRVideoController = (SRVideoController) ViewBindings.a(view, R.id.video_controller);
                    if (sRVideoController != null) {
                        i10 = R.id.video_play_overlay;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.video_play_overlay);
                        if (frameLayout2 != null) {
                            return new BaseVideoPlayContainerBinding((FrameLayout) view, linearLayout, frameLayout, nVImageView, sRVideoController, frameLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
