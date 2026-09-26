package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemAssetBinding implements ViewBinding {

    @NonNull
    public final NVImageView cover;

    @NonNull
    public final CircleProgressBar downloading;

    @NonNull
    public final FrameLayout downloadingLayout;

    @NonNull
    public final ImageView notDownloaded;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemAssetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAssetBinding bind(@NonNull View view) {
        int i10 = R.id.cover;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            i10 = R.id.downloading;
            CircleProgressBar circleProgressBar = (CircleProgressBar) ViewBindings.a(view, i10);
            if (circleProgressBar != null) {
                i10 = R.id.downloading_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout != null) {
                    i10 = R.id.not_downloaded;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        return new ItemAssetBinding((FrameLayout) view, nVImageView, circleProgressBar, frameLayout, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemAssetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_asset, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAssetBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull CircleProgressBar circleProgressBar, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.cover = nVImageView;
        this.downloading = circleProgressBar;
        this.downloadingLayout = frameLayout2;
        this.notDownloaded = imageView;
    }
}
