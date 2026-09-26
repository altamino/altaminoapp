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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes4.dex */
public final class ErrorViewBinding implements ViewBinding {

    @NonNull
    public final NVThemeTextView error;

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static ErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ErrorViewBinding bind(@NonNull View view) {
        int i10 = R.id.error;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
        if (nVThemeTextView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView != null) {
                i10 = R.id.text;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, i10);
                if (nVThemeTextView2 != null) {
                    return new ErrorViewBinding(linearLayout, nVThemeTextView, linearLayout, fontAwesomeView, nVThemeTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.error_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ErrorViewBinding(@NonNull LinearLayout linearLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = linearLayout;
        this.error = nVThemeTextView;
        this.errorContainer = linearLayout2;
        this.retry = fontAwesomeView;
        this.text = nVThemeTextView2;
    }
}
