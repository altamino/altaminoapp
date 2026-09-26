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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogChatMessageBinding implements ViewBinding {

    @NonNull
    public final LinearLayout alertDialogButtons;

    @NonNull
    public final ScrollView alertDialogContent;

    @NonNull
    public final TextView alertDialogTitle;

    @NonNull
    public final TextView chatMessage;

    @NonNull
    public final TintButton close;

    @NonNull
    public final FrameLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogChatMessageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogChatMessageBinding bind(@NonNull View view) {
        int i10 = R.id.alert_dialog_buttons;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.alert_dialog_content;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
            if (scrollView != null) {
                i10 = R.id.alert_dialog_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.chat_message;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        i10 = R.id.close;
                        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                        if (tintButton != null) {
                            FrameLayout frameLayout = (FrameLayout) view;
                            return new DialogChatMessageBinding(frameLayout, linearLayout, scrollView, textView, textView2, tintButton, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogChatMessageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_chat_message, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogChatMessageBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.alertDialogButtons = linearLayout;
        this.alertDialogContent = scrollView;
        this.alertDialogTitle = textView;
        this.chatMessage = textView2;
        this.close = tintButton;
        this.root = frameLayout2;
    }
}
