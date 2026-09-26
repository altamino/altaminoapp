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

/* JADX INFO: loaded from: classes9.dex */
public final class ForwardPlaceholderLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView forwardUrl;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ForwardPlaceholderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ForwardPlaceholderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.forward_placeholder_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ForwardPlaceholderLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.forwardUrl = textView;
    }

    @NonNull
    public static ForwardPlaceholderLayoutBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.forward_url);
        if (textView != null) {
            return new ForwardPlaceholderLayoutBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.forward_url)));
    }
}
