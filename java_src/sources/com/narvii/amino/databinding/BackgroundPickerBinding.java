package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class BackgroundPickerBinding implements ViewBinding {

    @NonNull
    public final NVImageView backgroundPreview;

    @NonNull
    public final TextView backgroundText;

    @NonNull
    public final ImageView pickerIcon;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BackgroundPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.background_picker, viewGroup);
        return bind(viewGroup);
    }

    private BackgroundPickerBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = view;
        this.backgroundPreview = nVImageView;
        this.backgroundText = textView;
        this.pickerIcon = imageView;
    }

    @NonNull
    public static BackgroundPickerBinding bind(@NonNull View view) {
        int i10 = R.id.background_preview;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background_preview);
        if (nVImageView != null) {
            i10 = R.id.background_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.background_text);
            if (textView != null) {
                i10 = R.id.picker_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.picker_icon);
                if (imageView != null) {
                    return new BackgroundPickerBinding(view, nVImageView, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
