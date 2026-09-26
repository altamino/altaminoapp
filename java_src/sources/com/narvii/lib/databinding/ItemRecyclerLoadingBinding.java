package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemRecyclerLoadingBinding implements ViewBinding {

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemRecyclerLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecyclerLoadingBinding bind(@NonNull View view) {
        int i10 = R.id.progress_bar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, i10);
        if (progressBar != null) {
            return new ItemRecyclerLoadingBinding((FrameLayout) view, progressBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemRecyclerLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recycler_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecyclerLoadingBinding(@NonNull FrameLayout frameLayout, @NonNull ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.progressBar = progressBar;
    }
}
