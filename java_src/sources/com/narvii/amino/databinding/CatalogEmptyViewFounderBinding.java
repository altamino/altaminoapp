package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes6.dex */
public final class CatalogEmptyViewFounderBinding implements ViewBinding {

    @NonNull
    public final LinearLayout catalogAdd;

    @NonNull
    public final TextView catalogEmptyInfo;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static CatalogEmptyViewFounderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogEmptyViewFounderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_empty_view_founder, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogEmptyViewFounderBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = flexLayout;
        this.catalogAdd = linearLayout;
        this.catalogEmptyInfo = textView;
        this.emptyRetry = fontAwesomeView;
    }

    @NonNull
    public static CatalogEmptyViewFounderBinding bind(@NonNull View view) {
        int i10 = R.id.catalog_add;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.catalog_add);
        if (linearLayout != null) {
            i10 = R.id.catalog_empty_info;
            TextView textView = (TextView) ViewBindings.a(view, R.id.catalog_empty_info);
            if (textView != null) {
                i10 = R.id.empty_retry;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
                if (fontAwesomeView != null) {
                    return new CatalogEmptyViewFounderBinding((FlexLayout) view, linearLayout, textView, fontAwesomeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
