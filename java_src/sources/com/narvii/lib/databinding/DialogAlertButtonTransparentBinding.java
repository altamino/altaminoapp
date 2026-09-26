package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DialogAlertButtonTransparentBinding implements ViewBinding {

    @NonNull
    public final Button alertDialogButton;

    @NonNull
    private final Button rootView;

    @NonNull
    public static DialogAlertButtonTransparentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public Button getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertButtonTransparentBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        Button button = (Button) view;
        return new DialogAlertButtonTransparentBinding(button, button);
    }

    @NonNull
    public static DialogAlertButtonTransparentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_button_transparent, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertButtonTransparentBinding(@NonNull Button button, @NonNull Button button2) {
        this.rootView = button;
        this.alertDialogButton = button2;
    }
}
