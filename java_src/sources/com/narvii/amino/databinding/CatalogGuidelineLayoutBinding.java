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

/* JADX INFO: loaded from: classes11.dex */
public final class CatalogGuidelineLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout catalogGuideline;

    @NonNull
    public final FontAwesomeView close;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static CatalogGuidelineLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.close);
        if (fontAwesomeView != null) {
            return new CatalogGuidelineLayoutBinding(linearLayout, linearLayout, fontAwesomeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.close)));
    }

    @NonNull
    public static CatalogGuidelineLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogGuidelineLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_guideline_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogGuidelineLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.catalogGuideline = linearLayout2;
        this.close = fontAwesomeView;
    }
}
