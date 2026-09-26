package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogAlertAdvanceOptionsLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout alertDialogButtons;

    @NonNull
    public final ScrollView alertDialogContent;

    @NonNull
    public final TextView alertDialogTitle;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogAlertAdvanceOptionsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertAdvanceOptionsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_advance_options_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertAdvanceOptionsLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.alertDialogButtons = linearLayout;
        this.alertDialogContent = scrollView;
        this.alertDialogTitle = textView;
        this.root = frameLayout2;
    }

    @NonNull
    public static DialogAlertAdvanceOptionsLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.alert_dialog_buttons;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.alert_dialog_buttons);
        if (linearLayout != null) {
            i10 = R.id.alert_dialog_content;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.alert_dialog_content);
            if (scrollView != null) {
                i10 = R.id.alert_dialog_title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.alert_dialog_title);
                if (textView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    return new DialogAlertAdvanceOptionsLayoutBinding(frameLayout, linearLayout, scrollView, textView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
