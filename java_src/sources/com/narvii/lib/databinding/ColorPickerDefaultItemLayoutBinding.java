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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ColorPickerDefaultItemLayoutBinding implements ViewBinding {

    @NonNull
    public final NVImageView itemColorDrawable;

    @NonNull
    public final View itemColorSelected;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ColorPickerDefaultItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ColorPickerDefaultItemLayoutBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.item_color_drawable;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView == null || (viewA = ViewBindings.a(view, (i10 = R.id.item_color_selected))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new ColorPickerDefaultItemLayoutBinding((FrameLayout) view, nVImageView, viewA);
    }

    @NonNull
    public static ColorPickerDefaultItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.color_picker_default_item_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ColorPickerDefaultItemLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull View view) {
        this.rootView = frameLayout;
        this.itemColorDrawable = nVImageView;
        this.itemColorSelected = view;
    }
}
