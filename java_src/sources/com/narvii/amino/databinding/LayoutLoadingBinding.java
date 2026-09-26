package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutLoadingBinding implements ViewBinding {

    @NonNull
    public final SpinningView loading;

    @NonNull
    private final SpinningView rootView;

    @NonNull
    public static LayoutLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SpinningView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutLoadingBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        SpinningView spinningView = (SpinningView) view;
        return new LayoutLoadingBinding(spinningView, spinningView);
    }

    @NonNull
    public static LayoutLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutLoadingBinding(@NonNull SpinningView spinningView, @NonNull SpinningView spinningView2) {
        this.rootView = spinningView;
        this.loading = spinningView2;
    }
}
