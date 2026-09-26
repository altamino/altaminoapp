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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogActionSheetButtonBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView radio;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static DialogActionSheetButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogActionSheetButtonBinding bind(@NonNull View view) {
        int i10 = R.id.radio;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new DialogActionSheetButtonBinding((LinearLayout) view, fontAwesomeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogActionSheetButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_action_sheet_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogActionSheetButtonBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.radio = fontAwesomeView;
        this.text = textView;
    }
}
