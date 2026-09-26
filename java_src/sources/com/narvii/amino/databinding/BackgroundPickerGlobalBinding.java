package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class BackgroundPickerGlobalBinding implements ViewBinding {

    @NonNull
    public final NVImageView backgroundPreview;

    @NonNull
    public final NVThemeTextView backgroundText;

    @NonNull
    public final TintButton pickerIcon;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BackgroundPickerGlobalBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.background_picker_global, viewGroup);
        return bind(viewGroup);
    }

    private BackgroundPickerGlobalBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull NVThemeTextView nVThemeTextView, @NonNull TintButton tintButton) {
        this.rootView = view;
        this.backgroundPreview = nVImageView;
        this.backgroundText = nVThemeTextView;
        this.pickerIcon = tintButton;
    }

    @NonNull
    public static BackgroundPickerGlobalBinding bind(@NonNull View view) {
        int i10 = R.id.background_preview;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background_preview);
        if (nVImageView != null) {
            i10 = R.id.background_text;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.background_text);
            if (nVThemeTextView != null) {
                i10 = R.id.picker_icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.picker_icon);
                if (tintButton != null) {
                    return new BackgroundPickerGlobalBinding(view, nVImageView, nVThemeTextView, tintButton);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
