package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class HistogramHintViewBinding implements ViewBinding {

    @NonNull
    public final TextView hintCoins;

    @NonNull
    public final TextView hintDate;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static HistogramHintViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HistogramHintViewBinding bind(@NonNull View view) {
        int i10 = R.id.hint_coins;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.hint_date;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                return new HistogramHintViewBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static HistogramHintViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.histogram_hint_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HistogramHintViewBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.hintCoins = textView;
        this.hintDate = textView2;
    }
}
