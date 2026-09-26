package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutVvFolderIndicatorBinding implements ViewBinding {

    @NonNull
    public final ImageView miniIndicator;

    @NonNull
    public final FrameLayout miniIndicatorRoot;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LayoutVvFolderIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutVvFolderIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_vv_folder_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutVvFolderIndicatorBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.miniIndicator = imageView;
        this.miniIndicatorRoot = frameLayout2;
    }

    @NonNull
    public static LayoutVvFolderIndicatorBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.mini_indicator);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new LayoutVvFolderIndicatorBinding(frameLayout, imageView, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mini_indicator)));
    }
}
