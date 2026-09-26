package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class LanguageItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    public final NVThemeTextView localizedText;

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static LanguageItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LanguageItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.language_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LanguageItemBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = nVThemeFrameLayout;
        this.check = fontAwesomeView;
        this.localizedText = nVThemeTextView;
        this.text = nVThemeTextView2;
    }

    @NonNull
    public static LanguageItemBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.check);
        if (fontAwesomeView != null) {
            i10 = R.id.localized_text;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.localized_text);
            if (nVThemeTextView != null) {
                i10 = R.id.text;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                if (nVThemeTextView2 != null) {
                    return new LanguageItemBinding((NVThemeFrameLayout) view, fontAwesomeView, nVThemeTextView, nVThemeTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
