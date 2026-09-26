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
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalPostSearchResultEmptyViewBinding implements ViewBinding {

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static GlobalPostSearchResultEmptyViewBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.empty_retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            i10 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.empty_text);
            if (textView != null) {
                return new GlobalPostSearchResultEmptyViewBinding(linearLayout, linearLayout, fontAwesomeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static GlobalPostSearchResultEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GlobalPostSearchResultEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.global_post_search_result_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GlobalPostSearchResultEmptyViewBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.empty = linearLayout2;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView;
    }
}
