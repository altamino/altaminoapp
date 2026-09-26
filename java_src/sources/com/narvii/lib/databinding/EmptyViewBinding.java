package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class EmptyViewBinding implements ViewBinding {

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final ImageView emptyIcon;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final NVThemeTextView emptyText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static EmptyViewBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.empty_icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.empty_retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView != null) {
                i10 = R.id.empty_text;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
                if (nVThemeTextView != null) {
                    return new EmptyViewBinding(linearLayout, linearLayout, imageView, fontAwesomeView, nVThemeTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static EmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EmptyViewBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = linearLayout;
        this.empty = linearLayout2;
        this.emptyIcon = imageView;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = nVThemeTextView;
    }
}
