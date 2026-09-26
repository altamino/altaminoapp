package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class BackgroundPickerLiteBinding implements ViewBinding {

    @NonNull
    public final NVImageView backgroundPreview;

    @NonNull
    public final ImageView pickerIcon;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BackgroundPickerLiteBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.background_picker_lite, viewGroup);
        return bind(viewGroup);
    }

    private BackgroundPickerLiteBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull ImageView imageView) {
        this.rootView = view;
        this.backgroundPreview = nVImageView;
        this.pickerIcon = imageView;
    }

    @NonNull
    public static BackgroundPickerLiteBinding bind(@NonNull View view) {
        int i10 = R.id.background_preview;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background_preview);
        if (nVImageView != null) {
            i10 = R.id.picker_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.picker_icon);
            if (imageView != null) {
                return new BackgroundPickerLiteBinding(view, nVImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
