package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes9.dex */
public final class ButtonShareDialogBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final AutoSizingTextView text;

    @NonNull
    public static ButtonShareDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ButtonShareDialogBinding bind(@NonNull View view) {
        int i10 = R.id.text;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
        if (autoSizingTextView != null) {
            return new ButtonShareDialogBinding((LinearLayout) view, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ButtonShareDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.button_share_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ButtonShareDialogBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = linearLayout;
        this.text = autoSizingTextView;
    }
}
