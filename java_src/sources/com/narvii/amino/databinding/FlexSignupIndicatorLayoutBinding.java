package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.account.AccountSignUpIndicatorView;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class FlexSignupIndicatorLayoutBinding implements ViewBinding {

    @NonNull
    private final AccountSignUpIndicatorView rootView;

    @NonNull
    public final AccountSignUpIndicatorView signupIndicator;

    @NonNull
    public static FlexSignupIndicatorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AccountSignUpIndicatorView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlexSignupIndicatorLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AccountSignUpIndicatorView accountSignUpIndicatorView = (AccountSignUpIndicatorView) view;
        return new FlexSignupIndicatorLayoutBinding(accountSignUpIndicatorView, accountSignUpIndicatorView);
    }

    @NonNull
    public static FlexSignupIndicatorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flex_signup_indicator_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlexSignupIndicatorLayoutBinding(@NonNull AccountSignUpIndicatorView accountSignUpIndicatorView, @NonNull AccountSignUpIndicatorView accountSignUpIndicatorView2) {
        this.rootView = accountSignUpIndicatorView;
        this.signupIndicator = accountSignUpIndicatorView2;
    }
}
