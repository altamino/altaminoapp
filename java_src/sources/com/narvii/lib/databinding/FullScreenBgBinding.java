package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FullScreenBgBinding implements ViewBinding {

    @NonNull
    public final NVImageView bg;

    @NonNull
    private final NVImageView rootView;

    @NonNull
    public static FullScreenBgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FullScreenBgBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVImageView nVImageView = (NVImageView) view;
        return new FullScreenBgBinding(nVImageView, nVImageView);
    }

    @NonNull
    public static FullScreenBgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.full_screen_bg, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FullScreenBgBinding(@NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2) {
        this.rootView = nVImageView;
        this.bg = nVImageView2;
    }
}
