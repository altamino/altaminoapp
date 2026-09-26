package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class HeaderAdsModuleItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView adsImage;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static HeaderAdsModuleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HeaderAdsModuleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.header_ads_module_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HeaderAdsModuleItemBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.adsImage = nVImageView;
    }

    @NonNull
    public static HeaderAdsModuleItemBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.ads_image);
        if (nVImageView != null) {
            return new HeaderAdsModuleItemBinding((FlexLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ads_image)));
    }
}
