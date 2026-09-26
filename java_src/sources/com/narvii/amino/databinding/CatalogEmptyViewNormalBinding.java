package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class CatalogEmptyViewNormalBinding implements ViewBinding {

    @NonNull
    public final TextView addWiki;

    @NonNull
    public final TextView createWiki;

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public static CatalogEmptyViewNormalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogEmptyViewNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_empty_view_normal, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogEmptyViewNormalBinding(@NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView3) {
        this.rootView = scrollView;
        this.addWiki = textView;
        this.createWiki = textView2;
        this.empty = linearLayout;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView3;
    }

    @NonNull
    public static CatalogEmptyViewNormalBinding bind(@NonNull View view) {
        int i10 = R.id.add_wiki;
        TextView textView = (TextView) ViewBindings.a(view, R.id.add_wiki);
        if (textView != null) {
            i10 = R.id.create_wiki;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.create_wiki);
            if (textView2 != null) {
                i10 = android.R.id.empty;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, android.R.id.empty);
                if (linearLayout != null) {
                    i10 = R.id.empty_retry;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
                    if (fontAwesomeView != null) {
                        i10 = R.id.empty_text;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.empty_text);
                        if (textView3 != null) {
                            return new CatalogEmptyViewNormalBinding((ScrollView) view, textView, textView2, linearLayout, fontAwesomeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
