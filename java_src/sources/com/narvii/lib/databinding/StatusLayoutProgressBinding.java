package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class StatusLayoutProgressBinding implements ViewBinding {

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final SpinningView rootView;

    @NonNull
    public static StatusLayoutProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SpinningView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StatusLayoutProgressBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        SpinningView spinningView = (SpinningView) view;
        return new StatusLayoutProgressBinding(spinningView, spinningView);
    }

    @NonNull
    public static StatusLayoutProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.status_layout_progress, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StatusLayoutProgressBinding(@NonNull SpinningView spinningView, @NonNull SpinningView spinningView2) {
        this.rootView = spinningView;
        this.progress = spinningView2;
    }
}
