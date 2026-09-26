package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutSrVideoLoadingBinding implements ViewBinding {

    @NonNull
    public final LinearLayout loadingLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ProgressBar statusLoadingSpinner;

    @NonNull
    public static LayoutSrVideoLoadingBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.status_loading_spinner);
        if (progressBar != null) {
            return new LayoutSrVideoLoadingBinding(linearLayout, linearLayout, progressBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.status_loading_spinner)));
    }

    @NonNull
    public static LayoutSrVideoLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutSrVideoLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_sr_video_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutSrVideoLoadingBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ProgressBar progressBar) {
        this.rootView = linearLayout;
        this.loadingLayout = linearLayout2;
        this.statusLoadingSpinner = progressBar;
    }
}
