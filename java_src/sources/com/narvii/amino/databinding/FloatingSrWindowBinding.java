package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.floating.SRFloatingLayout;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class FloatingSrWindowBinding implements ViewBinding {

    @NonNull
    public final ImageView close;

    @NonNull
    public final FrameLayout mineSurfaceContainer;

    @NonNull
    private final SRFloatingLayout rootView;

    @NonNull
    public final FrameLayout srFloatingContainer;

    @NonNull
    public final FrameLayout videoPlayerContainer;

    @NonNull
    public final TextView viewerPlayStatus;

    @NonNull
    public final NVImageView viewerThumbnail;

    @NonNull
    public static FloatingSrWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SRFloatingLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FloatingSrWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.floating_sr_window, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FloatingSrWindowBinding(@NonNull SRFloatingLayout sRFloatingLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView, @NonNull NVImageView nVImageView) {
        this.rootView = sRFloatingLayout;
        this.close = imageView;
        this.mineSurfaceContainer = frameLayout;
        this.srFloatingContainer = frameLayout2;
        this.videoPlayerContainer = frameLayout3;
        this.viewerPlayStatus = textView;
        this.viewerThumbnail = nVImageView;
    }

    @NonNull
    public static FloatingSrWindowBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
        if (imageView != null) {
            i10 = R.id.mine_surface_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.mine_surface_container);
            if (frameLayout != null) {
                i10 = R.id.sr_floating_container;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.sr_floating_container);
                if (frameLayout2 != null) {
                    i10 = R.id.video_player_container;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.video_player_container);
                    if (frameLayout3 != null) {
                        i10 = R.id.viewer_play_status;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.viewer_play_status);
                        if (textView != null) {
                            i10 = R.id.viewer_thumbnail;
                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.viewer_thumbnail);
                            if (nVImageView != null) {
                                return new FloatingSrWindowBinding((SRFloatingLayout) view, imageView, frameLayout, frameLayout2, frameLayout3, textView, nVImageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
