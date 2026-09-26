package com.narvii.lib.databinding;

import ai.medialab.medialabads2.banners.MediaLabSingletonBanner;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ActivityBaseMedialabBannerBinding implements ViewBinding {

    @NonNull
    public final FrameLayout activityContent;

    @NonNull
    public final FrameLayout frameSingleton;

    @NonNull
    public final MediaLabSingletonBanner mediaLabAdView;

    @NonNull
    public final RelativeLayout rootContent;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ActivityBaseMedialabBannerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActivityBaseMedialabBannerBinding bind(@NonNull View view) {
        int i10 = R.id.activity_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.frame_singleton;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R.id.media_lab_ad_view;
                MediaLabSingletonBanner mediaLabSingletonBanner = (MediaLabSingletonBanner) ViewBindings.a(view, i10);
                if (mediaLabSingletonBanner != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    return new ActivityBaseMedialabBannerBinding(relativeLayout, frameLayout, frameLayout2, mediaLabSingletonBanner, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ActivityBaseMedialabBannerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_base_medialab_banner, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActivityBaseMedialabBannerBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull MediaLabSingletonBanner mediaLabSingletonBanner, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.activityContent = frameLayout;
        this.frameSingleton = frameLayout2;
        this.mediaLabAdView = mediaLabSingletonBanner;
        this.rootContent = relativeLayout2;
    }
}
