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
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogProgressLayoutBinding implements ViewBinding {

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final TextView progressContent;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_progress_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogProgressLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.progress = spinningView;
        this.progressContent = textView;
        this.root = linearLayout2;
    }

    @NonNull
    public static DialogProgressLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.progress;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
        if (spinningView != null) {
            i10 = R.id.progress_content;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new DialogProgressLayoutBinding(linearLayout, spinningView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
