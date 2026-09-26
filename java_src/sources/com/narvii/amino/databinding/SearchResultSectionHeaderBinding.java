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

/* JADX INFO: loaded from: classes6.dex */
public final class SearchResultSectionHeaderBinding implements ViewBinding {

    @NonNull
    public final ImageView filter;

    @NonNull
    public final TextView preKey;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout searchResultSectionHeader;

    @NonNull
    public static SearchResultSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchResultSectionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_result_section_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchResultSectionHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.filter = imageView;
        this.preKey = textView;
        this.searchResultSectionHeader = linearLayout2;
    }

    @NonNull
    public static SearchResultSectionHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.filter;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.filter);
        if (imageView != null) {
            i10 = R.id.pre_key;
            TextView textView = (TextView) ViewBindings.a(view, R.id.pre_key);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new SearchResultSectionHeaderBinding(linearLayout, imageView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
