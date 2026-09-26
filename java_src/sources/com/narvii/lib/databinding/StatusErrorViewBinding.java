package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes.dex */
public final class StatusErrorViewBinding implements ViewBinding {

    @NonNull
    public final TextView error;

    @NonNull
    public final LinearLayout main;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static StatusErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StatusErrorViewBinding bind(@NonNull View view) {
        int i10 = R.id.error;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout != null) {
                i10 = R.id.retry;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
                if (fontAwesomeView != null) {
                    i10 = R.id.text;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        return new StatusErrorViewBinding((FrameLayout) view, textView, linearLayout, fontAwesomeView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StatusErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.status_error_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StatusErrorViewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.error = textView;
        this.main = linearLayout;
        this.retry = fontAwesomeView;
        this.text = textView2;
    }
}
