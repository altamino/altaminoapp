package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class CatalogEmptyViewOfficialBinding implements ViewBinding {

    @NonNull
    public final TextView emptyContent;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static CatalogEmptyViewOfficialBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogEmptyViewOfficialBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_empty_view_official, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogEmptyViewOfficialBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = flexLayout;
        this.emptyContent = textView;
        this.emptyRetry = fontAwesomeView;
    }

    @NonNull
    public static CatalogEmptyViewOfficialBinding bind(@NonNull View view) {
        int i10 = R.id.empty_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.empty_content);
        if (textView != null) {
            i10 = R.id.empty_retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
            if (fontAwesomeView != null) {
                return new CatalogEmptyViewOfficialBinding((FlexLayout) view, textView, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
