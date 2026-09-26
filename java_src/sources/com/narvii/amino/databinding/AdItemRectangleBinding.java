package com.narvii.amino.databinding;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class AdItemRectangleBinding implements ViewBinding {

    @NonNull
    public final MediaLabAdView medialabBannerRectangle;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AdItemRectangleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdItemRectangleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ad_item_rectangle, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdItemRectangleBinding(@NonNull FrameLayout frameLayout, @NonNull MediaLabAdView mediaLabAdView) {
        this.rootView = frameLayout;
        this.medialabBannerRectangle = mediaLabAdView;
    }

    @NonNull
    public static AdItemRectangleBinding bind(@NonNull View view) {
        MediaLabAdView mediaLabAdView = (MediaLabAdView) ViewBindings.a(view, R.id.medialab_banner_rectangle);
        if (mediaLabAdView != null) {
            return new AdItemRectangleBinding((FrameLayout) view, mediaLabAdView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.medialab_banner_rectangle)));
    }
}
