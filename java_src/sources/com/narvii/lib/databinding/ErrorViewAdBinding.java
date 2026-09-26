package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ErrorViewAdBinding implements ViewBinding {

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static ErrorViewAdBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.text;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
        if (nVThemeTextView != null) {
            return new ErrorViewAdBinding(linearLayout, linearLayout, nVThemeTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ErrorViewAdBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ErrorViewAdBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.error_view_ad, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ErrorViewAdBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = linearLayout;
        this.errorContainer = linearLayout2;
        this.text = nVThemeTextView;
    }
}
