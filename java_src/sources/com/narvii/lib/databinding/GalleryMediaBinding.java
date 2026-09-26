package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TouchImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class GalleryMediaBinding implements ViewBinding {

    @NonNull
    public final TextView checkHd;

    @NonNull
    public final LinearLayout downloadingContainer;

    @NonNull
    public final ProgressBar downloadingProgress;

    @NonNull
    public final TouchImageView image;

    @NonNull
    public final ProgressBar imageLoading;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SpinningView videoLoading;

    @NonNull
    public final NVVideoView videoView;

    @NonNull
    public static GalleryMediaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryMediaBinding bind(@NonNull View view) {
        int i10 = R.id.check_hd;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.downloading_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout != null) {
                i10 = R.id.downloading_progress;
                ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, i10);
                if (progressBar != null) {
                    i10 = R.id.image;
                    TouchImageView touchImageView = (TouchImageView) ViewBindings.a(view, i10);
                    if (touchImageView != null) {
                        i10 = R.id.image_loading;
                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.a(view, i10);
                        if (progressBar2 != null) {
                            i10 = R.id.video_loading;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                            if (spinningView != null) {
                                i10 = R.id.video_view;
                                NVVideoView nVVideoView = (NVVideoView) ViewBindings.a(view, i10);
                                if (nVVideoView != null) {
                                    return new GalleryMediaBinding((FrameLayout) view, textView, linearLayout, progressBar, touchImageView, progressBar2, spinningView, nVVideoView);
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
    public static GalleryMediaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_media, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryMediaBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull TouchImageView touchImageView, @NonNull ProgressBar progressBar2, @NonNull SpinningView spinningView, @NonNull NVVideoView nVVideoView) {
        this.rootView = frameLayout;
        this.checkHd = textView;
        this.downloadingContainer = linearLayout;
        this.downloadingProgress = progressBar;
        this.image = touchImageView;
        this.imageLoading = progressBar2;
        this.videoLoading = spinningView;
        this.videoView = nVVideoView;
    }
}
