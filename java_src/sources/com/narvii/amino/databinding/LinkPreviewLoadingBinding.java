package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class LinkPreviewLoadingBinding implements ViewBinding {

    @NonNull
    public final ProgressBar linkPreviewProgress;

    @NonNull
    public final RelativeLayout loadingContent;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static LinkPreviewLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkPreviewLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_preview_loading, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkPreviewLoadingBinding(@NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.linkPreviewProgress = progressBar;
        this.loadingContent = relativeLayout2;
    }

    @NonNull
    public static LinkPreviewLoadingBinding bind(@NonNull View view) {
        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.link_preview_progress);
        if (progressBar != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            return new LinkPreviewLoadingBinding(relativeLayout, progressBar, relativeLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.link_preview_progress)));
    }
}
