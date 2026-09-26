package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.master.R;
import com.narvii.widget.ClearEditText;

/* JADX INFO: loaded from: classes2.dex */
public final class AccountMobileBinding implements ViewBinding {

    @NonNull
    public final View countryDivider;

    @NonNull
    public final MyPhoneCountryCodePicker countryPicker;

    @NonNull
    public final ClearEditText edit;

    @NonNull
    public final View phoneDivider;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public static AccountMobileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountMobileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_mobile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountMobileBinding(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull MyPhoneCountryCodePicker myPhoneCountryCodePicker, @NonNull ClearEditText clearEditText, @NonNull View view2) {
        this.rootView = constraintLayout;
        this.countryDivider = view;
        this.countryPicker = myPhoneCountryCodePicker;
        this.edit = clearEditText;
        this.phoneDivider = view2;
    }

    @NonNull
    public static AccountMobileBinding bind(@NonNull View view) {
        int i10 = R.id.country_divider;
        View viewA = ViewBindings.a(view, R.id.country_divider);
        if (viewA != null) {
            i10 = R.id.country_picker;
            MyPhoneCountryCodePicker myPhoneCountryCodePicker = (MyPhoneCountryCodePicker) ViewBindings.a(view, R.id.country_picker);
            if (myPhoneCountryCodePicker != null) {
                i10 = R.id.edit;
                ClearEditText clearEditText = (ClearEditText) ViewBindings.a(view, R.id.edit);
                if (clearEditText != null) {
                    i10 = R.id.phone_divider;
                    View viewA2 = ViewBindings.a(view, R.id.phone_divider);
                    if (viewA2 != null) {
                        return new AccountMobileBinding((ConstraintLayout) view, viewA, myPhoneCountryCodePicker, clearEditText, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
