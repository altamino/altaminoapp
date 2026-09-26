package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes2.dex */
public final class RecycleProgressLayoutBinding implements ViewBinding {

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    private final ProgressBar rootView;

    @NonNull
    public static RecycleProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ProgressBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecycleProgressLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ProgressBar progressBar = (ProgressBar) view;
        return new RecycleProgressLayoutBinding(progressBar, progressBar);
    }

    @NonNull
    public static RecycleProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recycle_progress_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecycleProgressLayoutBinding(@NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2) {
        this.rootView = progressBar;
        this.requestProgress = progressBar2;
    }
}
