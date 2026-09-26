package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerBrowsingBgBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    private final NVImageView rootView;

    @NonNull
    public static LiveLayerBrowsingBgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerBrowsingBgBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVImageView nVImageView = (NVImageView) view;
        return new LiveLayerBrowsingBgBinding(nVImageView, nVImageView);
    }

    @NonNull
    public static LiveLayerBrowsingBgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_browsing_bg, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerBrowsingBgBinding(@NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2) {
        this.rootView = nVImageView;
        this.image = nVImageView2;
    }
}
