package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentAccountRestoreEmailBinding implements ViewBinding {

    @NonNull
    public final TextInputLayout emailInputLayout;

    @NonNull
    public final TextView forgetPassword;

    @NonNull
    public final TextInputLayout passInputLayout;

    @NonNull
    public final Button restore;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentAccountRestoreEmailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentAccountRestoreEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_account_restore_email, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentAccountRestoreEmailBinding(@NonNull FrameLayout frameLayout, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView, @NonNull TextInputLayout textInputLayout2, @NonNull Button button) {
        this.rootView = frameLayout;
        this.emailInputLayout = textInputLayout;
        this.forgetPassword = textView;
        this.passInputLayout = textInputLayout2;
        this.restore = button;
    }

    @NonNull
    public static FragmentAccountRestoreEmailBinding bind(@NonNull View view) {
        int i10 = R.id.email_input_layout;
        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.email_input_layout);
        if (textInputLayout != null) {
            i10 = R.id.forget_password;
            TextView textView = (TextView) ViewBindings.a(view, R.id.forget_password);
            if (textView != null) {
                i10 = R.id.pass_input_layout;
                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.a(view, R.id.pass_input_layout);
                if (textInputLayout2 != null) {
                    i10 = R.id.restore;
                    Button button = (Button) ViewBindings.a(view, R.id.restore);
                    if (button != null) {
                        return new FragmentAccountRestoreEmailBinding((FrameLayout) view, textInputLayout, textView, textInputLayout2, button);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
