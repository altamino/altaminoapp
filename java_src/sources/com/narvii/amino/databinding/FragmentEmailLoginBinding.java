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
import com.narvii.widget.TextInputLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentEmailLoginBinding implements ViewBinding {

    @NonNull
    public final TextInputLayout emailInputLayout;

    @NonNull
    public final TextView forgetPassword;

    @NonNull
    public final Button login;

    @NonNull
    public final TextInputLayout passInputLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentEmailLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEmailLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_email_login, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEmailLoginBinding(@NonNull LinearLayout linearLayout, @NonNull TextInputLayout textInputLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextInputLayout textInputLayout2) {
        this.rootView = linearLayout;
        this.emailInputLayout = textInputLayout;
        this.forgetPassword = textView;
        this.login = button;
        this.passInputLayout = textInputLayout2;
    }

    @NonNull
    public static FragmentEmailLoginBinding bind(@NonNull View view) {
        int i10 = R.id.email_input_layout;
        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(view, R.id.email_input_layout);
        if (textInputLayout != null) {
            i10 = R.id.forget_password;
            TextView textView = (TextView) ViewBindings.a(view, R.id.forget_password);
            if (textView != null) {
                i10 = R.id.login;
                Button button = (Button) ViewBindings.a(view, R.id.login);
                if (button != null) {
                    i10 = R.id.pass_input_layout;
                    TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.a(view, R.id.pass_input_layout);
                    if (textInputLayout2 != null) {
                        return new FragmentEmailLoginBinding((LinearLayout) view, textInputLayout, textView, button, textInputLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
