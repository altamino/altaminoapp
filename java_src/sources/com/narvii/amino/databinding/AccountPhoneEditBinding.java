package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.master.R;
import com.narvii.widget.ClearEditText;

/* JADX INFO: loaded from: classes5.dex */
public final class AccountPhoneEditBinding implements ViewBinding {

    @NonNull
    public final MyPhoneCountryCodePicker countryPicker;

    @NonNull
    public final ClearEditText edit;

    @NonNull
    public final TextView inputErrorHint;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountPhoneEditBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.account_phone_edit, viewGroup);
        return bind(viewGroup);
    }

    private AccountPhoneEditBinding(@NonNull View view, @NonNull MyPhoneCountryCodePicker myPhoneCountryCodePicker, @NonNull ClearEditText clearEditText, @NonNull TextView textView) {
        this.rootView = view;
        this.countryPicker = myPhoneCountryCodePicker;
        this.edit = clearEditText;
        this.inputErrorHint = textView;
    }

    @NonNull
    public static AccountPhoneEditBinding bind(@NonNull View view) {
        int i10 = R.id.country_picker;
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = (MyPhoneCountryCodePicker) ViewBindings.a(view, R.id.country_picker);
        if (myPhoneCountryCodePicker != null) {
            i10 = R.id.edit;
            ClearEditText clearEditText = (ClearEditText) ViewBindings.a(view, R.id.edit);
            if (clearEditText != null) {
                i10 = R.id.input_error_hint;
                TextView textView = (TextView) ViewBindings.a(view, R.id.input_error_hint);
                if (textView != null) {
                    return new AccountPhoneEditBinding(view, myPhoneCountryCodePicker, clearEditText, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
