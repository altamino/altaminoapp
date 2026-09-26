package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class CatalogCategoryPickerItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView add;

    @NonNull
    public final FontAwesomeView icon;

    @NonNull
    public final TextView label;

    @NonNull
    public final ImageView radio;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static CatalogCategoryPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogCategoryPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_category_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogCategoryPickerItemBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = linearLayout;
        this.add = fontAwesomeView;
        this.icon = fontAwesomeView2;
        this.label = textView;
        this.radio = imageView;
        this.stub1 = view;
    }

    @NonNull
    public static CatalogCategoryPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.add;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.add);
        if (fontAwesomeView != null) {
            i10 = R.id.icon;
            FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.icon);
            if (fontAwesomeView2 != null) {
                i10 = R.id.label;
                TextView textView = (TextView) ViewBindings.a(view, R.id.label);
                if (textView != null) {
                    i10 = R.id.radio;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.radio);
                    if (imageView != null) {
                        i10 = R.id.stub1;
                        View viewA = ViewBindings.a(view, R.id.stub1);
                        if (viewA != null) {
                            return new CatalogCategoryPickerItemBinding((LinearLayout) view, fontAwesomeView, fontAwesomeView2, textView, imageView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
