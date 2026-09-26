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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ExplorerEmptyLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TintButton languageArrows;

    @NonNull
    public final TextView languageInfo;

    @NonNull
    public final LinearLayout languageInfoContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ExplorerEmptyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ExplorerEmptyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.explorer_empty_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ExplorerEmptyLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.emptyRetry = fontAwesomeView;
        this.languageArrows = tintButton;
        this.languageInfo = textView;
        this.languageInfoContainer = linearLayout2;
    }

    @NonNull
    public static ExplorerEmptyLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.empty_retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            i10 = R.id.language_arrows;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.language_arrows);
            if (tintButton != null) {
                i10 = R.id.language_info;
                TextView textView = (TextView) ViewBindings.a(view, R.id.language_info);
                if (textView != null) {
                    i10 = R.id.language_info_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.language_info_container);
                    if (linearLayout != null) {
                        return new ExplorerEmptyLayoutBinding((LinearLayout) view, fontAwesomeView, tintButton, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
