package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes2.dex */
public final class CatalogCategoryPickerAddBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView add;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static CatalogCategoryPickerAddBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogCategoryPickerAddBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_category_picker_add, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogCategoryPickerAddBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull View view) {
        this.rootView = linearLayout;
        this.add = fontAwesomeView;
        this.stub1 = view;
    }

    @NonNull
    public static CatalogCategoryPickerAddBinding bind(@NonNull View view) {
        int i10 = R.id.add;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.add);
        if (fontAwesomeView != null) {
            i10 = R.id.stub1;
            View viewA = ViewBindings.a(view, R.id.stub1);
            if (viewA != null) {
                return new CatalogCategoryPickerAddBinding((LinearLayout) view, fontAwesomeView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
