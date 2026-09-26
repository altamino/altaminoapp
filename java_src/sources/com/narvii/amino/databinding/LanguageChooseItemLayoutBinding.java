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

/* JADX INFO: loaded from: classes8.dex */
public final class LanguageChooseItemLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView language;

    @NonNull
    public final LinearLayout languageLayout;

    @NonNull
    public final ImageView languagePicked;

    @NonNull
    public final TextView localLanguage;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LanguageChooseItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LanguageChooseItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.language_choose_item_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LanguageChooseItemLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.language = textView;
        this.languageLayout = linearLayout2;
        this.languagePicked = imageView;
        this.localLanguage = textView2;
    }

    @NonNull
    public static LanguageChooseItemLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.language;
        TextView textView = (TextView) ViewBindings.a(view, R.id.language);
        if (textView != null) {
            i10 = R.id.language_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.language_layout);
            if (linearLayout != null) {
                i10 = R.id.language_picked;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.language_picked);
                if (imageView != null) {
                    i10 = R.id.local_language;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.local_language);
                    if (textView2 != null) {
                        return new LanguageChooseItemLayoutBinding((LinearLayout) view, textView, linearLayout, imageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
