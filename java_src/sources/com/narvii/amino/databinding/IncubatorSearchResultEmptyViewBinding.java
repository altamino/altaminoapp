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

/* JADX INFO: loaded from: classes11.dex */
public final class IncubatorSearchResultEmptyViewBinding implements ViewBinding {

    @NonNull
    public final TextView currentLanguage;

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    public final LinearLayout languageSwitcher;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static IncubatorSearchResultEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorSearchResultEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_search_result_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorSearchResultEmptyViewBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = flexLayout;
        this.currentLanguage = textView;
        this.empty = linearLayout;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView2;
        this.languageSwitcher = linearLayout2;
    }

    @NonNull
    public static IncubatorSearchResultEmptyViewBinding bind(@NonNull View view) {
        int i10 = R.id.current_language;
        TextView textView = (TextView) ViewBindings.a(view, R.id.current_language);
        if (textView != null) {
            i10 = android.R.id.empty;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, android.R.id.empty);
            if (linearLayout != null) {
                i10 = R.id.empty_retry;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
                if (fontAwesomeView != null) {
                    i10 = R.id.empty_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.empty_text);
                    if (textView2 != null) {
                        i10 = R.id.language_switcher;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.language_switcher);
                        if (linearLayout2 != null) {
                            return new IncubatorSearchResultEmptyViewBinding((FlexLayout) view, textView, linearLayout, fontAwesomeView, textView2, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
