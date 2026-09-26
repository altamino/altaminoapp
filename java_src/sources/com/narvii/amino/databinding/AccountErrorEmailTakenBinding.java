package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class AccountErrorEmailTakenBinding implements ViewBinding {

    @NonNull
    public final TextView cancel;

    @NonNull
    public final TextView createAcount;

    @NonNull
    public final TextView loginWithEmail;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static AccountErrorEmailTakenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountErrorEmailTakenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_error_email_taken, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountErrorEmailTakenBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.createAcount = textView2;
        this.loginWithEmail = textView3;
        this.title = textView4;
    }

    @NonNull
    public static AccountErrorEmailTakenBinding bind(@NonNull View view) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.a(view, R.id.cancel);
        if (textView != null) {
            i10 = R.id.create_acount;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.create_acount);
            if (textView2 != null) {
                i10 = R.id.login_with_email;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.login_with_email);
                if (textView3 != null) {
                    i10 = R.id.title;
                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView4 != null) {
                        return new AccountErrorEmailTakenBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
