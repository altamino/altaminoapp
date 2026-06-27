package com.narvii.account;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class SignUpAccountCreatedFragment extends AccountBaseFragment implements FragmentOnBackListener {
    public static final int FINISH_DELAY = 1000;
    TintButton tintButton;

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return true;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sign_up_account_created, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.tintButton = (TintButton) view.findViewById(R.id.success);
        this.tintButton.setTintColor(new AccountUtils(getContext()).getAccountForegroundColor());
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SoftKeyboard.hideSoftKeyboard(getContext());
        Utils.handler.postDelayed(new Runnable() { // from class: com.narvii.account.SignUpAccountCreatedFragment.1
            @Override // java.lang.Runnable
            public void run() {
                SignUpAccountCreatedFragment signUpAccountCreatedFragment = SignUpAccountCreatedFragment.this;
                signUpAccountCreatedFragment.finishWithResult(true, signUpAccountCreatedFragment.getBooleanParam("newAccount") ? 1 : 0, null);
            }
        }, 1000L);
    }
}
