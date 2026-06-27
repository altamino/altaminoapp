package com.narvii.account;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class ThirdPartySetUpFragment extends AccountBaseFragment implements View.OnClickListener {
    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 16;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_third_part_setup, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.email).setOnClickListener(this);
        view.findViewById(R.id.phone).setOnClickListener(this);
        AccountUtils accountUtils = new AccountUtils(getContext());
        ((Button) view.findViewById(R.id.email)).setTextColor(accountUtils.getAccountForegroundColor());
        ((Button) view.findViewById(R.id.phone)).setTextColor(accountUtils.getAccountForegroundColor());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.email) {
            goEmailPage();
        } else {
            if (id != R.id.phone) {
                return;
            }
            goMobilePage();
        }
    }

    private void goEmailPage() {
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        emailSignupFragment.setArguments(bundle);
        fragmentTransactionBeginTransaction.replace(R.id.frame, emailSignupFragment).addToBackStack(null).commitAllowingStateLoss();
    }

    private void goMobilePage() {
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        MobileSignupFragment mobileSignupFragment = new MobileSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        mobileSignupFragment.setArguments(bundle);
        fragmentTransactionBeginTransaction.replace(R.id.frame, mobileSignupFragment).addToBackStack(null).commitAllowingStateLoss();
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void onMobileCheckSuccess(String str) {
        if (getFragmentManager() == null) {
            return;
        }
        SignUpSetPasswordFragment signUpSetPasswordFragment = new SignUpSetPasswordFragment();
        Bundle bundle = new Bundle();
        bundle.putString("validationContext", str);
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, true);
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        signUpSetPasswordFragment.setArguments(bundle);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(0, 0, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        fragmentTransactionBeginTransaction.replace(R.id.frame, signUpSetPasswordFragment).addToBackStack(null).commitAllowingStateLoss();
    }
}
