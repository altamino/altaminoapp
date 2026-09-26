package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogAlertEditBinding implements ViewBinding {

    @NonNull
    public final EditText alertDialogEdit;

    @NonNull
    private final EditText rootView;

    @NonNull
    public static DialogAlertEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public EditText getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertEditBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        EditText editText = (EditText) view;
        return new DialogAlertEditBinding(editText, editText);
    }

    @NonNull
    public static DialogAlertEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertEditBinding(@NonNull EditText editText, @NonNull EditText editText2) {
        this.rootView = editText;
        this.alertDialogEdit = editText2;
    }
}
