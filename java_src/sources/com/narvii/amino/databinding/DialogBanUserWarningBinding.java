package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogBanUserWarningBinding implements ViewBinding {

    @NonNull
    public final Button cancel;

    @NonNull
    public final TextView content;

    @NonNull
    public final Button messageUser;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final Button sendAlways;

    @NonNull
    public static DialogBanUserWarningBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogBanUserWarningBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_ban_user_warning, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogBanUserWarningBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull Button button3) {
        this.rootView = linearLayout;
        this.cancel = button;
        this.content = textView;
        this.messageUser = button2;
        this.sendAlways = button3;
    }

    @NonNull
    public static DialogBanUserWarningBinding bind(@NonNull View view) {
        int i10 = R.id.cancel;
        Button button = (Button) ViewBindings.a(view, R.id.cancel);
        if (button != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.content);
            if (textView != null) {
                i10 = R.id.message_user;
                Button button2 = (Button) ViewBindings.a(view, R.id.message_user);
                if (button2 != null) {
                    i10 = R.id.send_always;
                    Button button3 = (Button) ViewBindings.a(view, R.id.send_always);
                    if (button3 != null) {
                        return new DialogBanUserWarningBinding((LinearLayout) view, button, textView, button2, button3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
