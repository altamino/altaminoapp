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

/* JADX INFO: loaded from: classes6.dex */
public final class AdsModuleItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView adsImage;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static AdsModuleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdsModuleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ads_module_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdsModuleItemBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.adsImage = nVImageView;
    }

    @NonNull
    public static AdsModuleItemBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.ads_image);
        if (nVImageView != null) {
            return new AdsModuleItemBinding((FlexLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ads_image)));
    }
}
