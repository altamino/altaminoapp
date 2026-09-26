package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class GalleryItemPlaceholderBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final TintButton plus;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static GalleryItemPlaceholderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryItemPlaceholderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_item_placeholder, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryItemPlaceholderBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TintButton tintButton) {
        this.rootView = frameLayout;
        this.bg = view;
        this.plus = tintButton;
    }

    @NonNull
    public static GalleryItemPlaceholderBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.plus;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.plus);
            if (tintButton != null) {
                return new GalleryItemPlaceholderBinding((FrameLayout) view, viewA, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
