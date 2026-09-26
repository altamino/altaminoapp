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
import com.narvii.widget.ClearEditText;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogInputUrlBinding implements ViewBinding {

    @NonNull
    public final ClearEditText edit;

    @NonNull
    public final ClearEditText edit2;

    @NonNull
    public final TextView error;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogInputUrlBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogInputUrlBinding bind(@NonNull View view) {
        int i10 = R.id.edit;
        ClearEditText clearEditText = (ClearEditText) ViewBindings.a(view, i10);
        if (clearEditText != null) {
            i10 = R.id.edit_2;
            ClearEditText clearEditText2 = (ClearEditText) ViewBindings.a(view, i10);
            if (clearEditText2 != null) {
                i10 = R.id.error;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new DialogInputUrlBinding((LinearLayout) view, clearEditText, clearEditText2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogInputUrlBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_input_url, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogInputUrlBinding(@NonNull LinearLayout linearLayout, @NonNull ClearEditText clearEditText, @NonNull ClearEditText clearEditText2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.edit = clearEditText;
        this.edit2 = clearEditText2;
        this.error = textView;
    }
}
