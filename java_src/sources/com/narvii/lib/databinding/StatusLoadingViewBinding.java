package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class StatusLoadingViewBinding implements ViewBinding {

    @NonNull
    public final SpinningView loading;

    @NonNull
    public final FrameLayout main;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static StatusLoadingViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StatusLoadingViewBinding bind(@NonNull View view) {
        int i10 = R.id.loading;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
        if (spinningView != null) {
            i10 = R.id.main;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                return new StatusLoadingViewBinding((FrameLayout) view, spinningView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StatusLoadingViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.status_loading_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StatusLoadingViewBinding(@NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.loading = spinningView;
        this.main = frameLayout2;
    }
}
