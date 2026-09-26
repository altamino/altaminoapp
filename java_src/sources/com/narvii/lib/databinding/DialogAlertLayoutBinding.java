package com.narvii.lib.databinding;

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
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogAlertLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout alertDialogButtons;

    @NonNull
    public final ScrollView alertDialogContent;

    @NonNull
    public final TextView alertDialogTitle;

    @NonNull
    public final LinearLayout dialogContent;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogAlertLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAlertLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.alert_dialog_buttons;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.alert_dialog_content;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
            if (scrollView != null) {
                i10 = R.id.alert_dialog_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.dialog_content;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout2 != null) {
                        FrameLayout frameLayout = (FrameLayout) view;
                        return new DialogAlertLayoutBinding(frameLayout, linearLayout, scrollView, textView, linearLayout2, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogAlertLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alert_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAlertLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.alertDialogButtons = linearLayout;
        this.alertDialogContent = scrollView;
        this.alertDialogTitle = textView;
        this.dialogContent = linearLayout2;
        this.root = frameLayout2;
    }
}
