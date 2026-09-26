package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSignUpPhoneNumberBinding implements ViewBinding {

    @NonNull
    public final TextView countryCode;

    @NonNull
    public final EditText editPhoneNumber;

    @NonNull
    public final TextView emailInstead;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentSignUpPhoneNumberBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSignUpPhoneNumberBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sign_up_phone_number, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSignUpPhoneNumberBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.countryCode = textView;
        this.editPhoneNumber = editText;
        this.emailInstead = textView2;
    }

    @NonNull
    public static FragmentSignUpPhoneNumberBinding bind(@NonNull View view) {
        int i10 = R.id.country_code;
        TextView textView = (TextView) ViewBindings.a(view, R.id.country_code);
        if (textView != null) {
            i10 = R.id.edit_phone_number;
            EditText editText = (EditText) ViewBindings.a(view, R.id.edit_phone_number);
            if (editText != null) {
                i10 = R.id.email_instead;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.email_instead);
                if (textView2 != null) {
                    return new FragmentSignUpPhoneNumberBinding((LinearLayout) view, textView, editText, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
