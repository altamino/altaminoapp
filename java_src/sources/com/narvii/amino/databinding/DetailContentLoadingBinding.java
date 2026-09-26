package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes.dex */
public final class DetailContentLoadingBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SpinningView spinner;

    @NonNull
    public static DetailContentLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailContentLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_content_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailContentLoadingBinding(@NonNull LinearLayout linearLayout, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.spinner = spinningView;
    }

    @NonNull
    public static DetailContentLoadingBinding bind(@NonNull View view) {
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.spinner);
        if (spinningView != null) {
            return new DetailContentLoadingBinding((LinearLayout) view, spinningView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.spinner)));
    }
}
