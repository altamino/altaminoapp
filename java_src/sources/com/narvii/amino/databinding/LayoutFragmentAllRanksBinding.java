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

/* JADX INFO: loaded from: classes9.dex */
public final class LayoutFragmentAllRanksBinding implements ViewBinding {

    @NonNull
    public final ImageView backgroundImage;

    @NonNull
    public final View bg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static LayoutFragmentAllRanksBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutFragmentAllRanksBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_fragment_all_ranks, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutFragmentAllRanksBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.backgroundImage = imageView;
        this.bg = view;
    }

    @NonNull
    public static LayoutFragmentAllRanksBinding bind(@NonNull View view) {
        int i10 = R.id.background_image;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.background_image);
        if (imageView != null) {
            i10 = R.id.bg;
            View viewA = ViewBindings.a(view, R.id.bg);
            if (viewA != null) {
                return new LayoutFragmentAllRanksBinding((FrameLayout) view, imageView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
