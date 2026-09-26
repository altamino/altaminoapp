package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.SplashView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class IncubatorSplashViewBinding implements ViewBinding {

    @NonNull
    public final SplashView Splash;

    @NonNull
    public final NVImageView image;

    @NonNull
    private final SplashView rootView;

    @NonNull
    public static IncubatorSplashViewBinding bind(@NonNull View view) {
        SplashView splashView = (SplashView) view;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            return new IncubatorSplashViewBinding(splashView, splashView, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }

    @NonNull
    public static IncubatorSplashViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SplashView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorSplashViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_splash_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorSplashViewBinding(@NonNull SplashView splashView, @NonNull SplashView splashView2, @NonNull NVImageView nVImageView) {
        this.rootView = splashView;
        this.Splash = splashView2;
        this.image = nVImageView;
    }
}
