package com.narvii.account;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public class ThirdPartySetUpFragment extends AccountBaseFragment implements View.OnClickListener {
    private void goEmailPage() {
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        emailSignupFragment.setArguments(bundle);
        fragmentTransactionQ.u(R.id.frame, emailSignupFragment).h(null).k();
    }

    private void goMobilePage() {
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        MobileSignupFragment mobileSignupFragment = new MobileSignupFragment();
        Bundle bundle = new Bundle();
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        mobileSignupFragment.setArguments(bundle);
        fragmentTransactionQ.u(R.id.frame, mobileSignupFragment).h(null).k();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.email) {
            if (id == R.id.phone) {
                goMobilePage();
                return;
            }
            return;
        }
        goEmailPage();
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            LoginActivity loginActivity = (LoginActivity) getActivity();
            loginActivity.statMaxLoginStep = 0;
            loginActivity.statMaxSignupSetp = 16;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_third_part_setup, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.email).setOnClickListener(this);
        view.findViewById(R.id.phone).setOnClickListener(this);
        AccountUtils accountUtils = new AccountUtils(getContext());
        ((Button) view.findViewById(R.id.email)).setTextColor(accountUtils.getAccountForegroundColor());
        ((Button) view.findViewById(R.id.phone)).setTextColor(accountUtils.getAccountForegroundColor());
    }
}
