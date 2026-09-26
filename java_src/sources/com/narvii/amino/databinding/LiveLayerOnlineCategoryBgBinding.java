package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveLayerOnlineCategoryBgBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LiveLayerOnlineCategoryBgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineCategoryBgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_category_bg, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineCategoryBgBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.image = nVImageView;
    }

    @NonNull
    public static LiveLayerOnlineCategoryBgBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            return new LiveLayerOnlineCategoryBgBinding((FrameLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }
}
