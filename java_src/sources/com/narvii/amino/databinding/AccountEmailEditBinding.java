package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoCompleteEmailView;

/* JADX INFO: loaded from: classes7.dex */
public final class AccountEmailEditBinding implements ViewBinding {

    @NonNull
    public final AutoCompleteEmailView edit;

    @NonNull
    public final TextView inputErrorHint;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountEmailEditBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.account_email_edit, viewGroup);
        return bind(viewGroup);
    }

    private AccountEmailEditBinding(@NonNull View view, @NonNull AutoCompleteEmailView autoCompleteEmailView, @NonNull TextView textView) {
        this.rootView = view;
        this.edit = autoCompleteEmailView;
        this.inputErrorHint = textView;
    }

    @NonNull
    public static AccountEmailEditBinding bind(@NonNull View view) {
        int i10 = R.id.edit;
        AutoCompleteEmailView autoCompleteEmailView = (AutoCompleteEmailView) ViewBindings.a(view, R.id.edit);
        if (autoCompleteEmailView != null) {
            i10 = R.id.input_error_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.input_error_hint);
            if (textView != null) {
                return new AccountEmailEditBinding(view, autoCompleteEmailView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
