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

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutTopErrorViewBinding implements ViewBinding {

    @NonNull
    public final TextView error;

    @NonNull
    public final LinearLayout errorContainer;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static LayoutTopErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutTopErrorViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_top_error_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutTopErrorViewBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.error = textView;
        this.errorContainer = linearLayout2;
        this.retry = fontAwesomeView;
        this.text = textView2;
    }

    @NonNull
    public static LayoutTopErrorViewBinding bind(@NonNull View view) {
        int i10 = R.id.error;
        TextView textView = (TextView) ViewBindings.a(view, R.id.error);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
            if (fontAwesomeView != null) {
                i10 = R.id.text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                if (textView2 != null) {
                    return new LayoutTopErrorViewBinding(linearLayout, textView, linearLayout, fontAwesomeView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
