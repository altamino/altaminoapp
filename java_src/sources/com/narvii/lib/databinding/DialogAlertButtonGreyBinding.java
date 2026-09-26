package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogAlertButtonGreyBinding implements ViewBinding {

    @NonNull
    public final Button alertDialogButton;

    @NonNull
    private final Button rootView;

    @NonNull
    public static DialogAlertButtonGreyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public Button getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertButtonGreyBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        Button button = (Button) view;
        return new DialogAlertButtonGreyBinding(button, button);
    }

    @NonNull
    public static DialogAlertButtonGreyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_button_grey, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertButtonGreyBinding(@NonNull Button button, @NonNull Button button2) {
        this.rootView = button;
        this.alertDialogButton = button2;
    }
}
