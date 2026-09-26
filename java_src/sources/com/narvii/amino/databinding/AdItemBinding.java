package com.narvii.amino.databinding;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;

/* JADX INFO: loaded from: classes6.dex */
public final class AdItemBinding implements ViewBinding {

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final MediaLabAdView singletonBanner;

    @NonNull
    public static AdItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ad_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdItemBinding(@NonNull FeedListItem feedListItem, @NonNull MediaLabAdView mediaLabAdView) {
        this.rootView = feedListItem;
        this.singletonBanner = mediaLabAdView;
    }

    @NonNull
    public static AdItemBinding bind(@NonNull View view) {
        MediaLabAdView mediaLabAdView = (MediaLabAdView) ViewBindings.a(view, R.id.singleton_banner);
        if (mediaLabAdView != null) {
            return new AdItemBinding((FeedListItem) view, mediaLabAdView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.singleton_banner)));
    }
}
