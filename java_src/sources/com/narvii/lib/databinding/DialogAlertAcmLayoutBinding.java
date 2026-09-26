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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogAlertAcmLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout alertDialogButtons;

    @NonNull
    public final TextView alertDialogMessage;

    @NonNull
    public final TextView alertDialogTitle;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DialogAlertAcmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertAcmLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.alert_dialog_buttons;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.alert_dialog_message;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.alert_dialog_title;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    FlexLayout flexLayout = (FlexLayout) view;
                    return new DialogAlertAcmLayoutBinding(flexLayout, linearLayout, textView, textView2, flexLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogAlertAcmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_acm_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertAcmLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.alertDialogButtons = linearLayout;
        this.alertDialogMessage = textView;
        this.alertDialogTitle = textView2;
        this.root = flexLayout2;
    }
}
