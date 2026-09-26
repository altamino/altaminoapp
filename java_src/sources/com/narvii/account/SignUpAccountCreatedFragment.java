package com.narvii.account;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public class SignUpAccountCreatedFragment extends AccountBaseFragment implements FragmentOnBackListener {
    private static final int FINISH_DELAY = 1000;

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0() {
        finishWithResult(true, getBooleanParam("newAccount") ? 1 : 0, null);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SoftKeyboard.hideSoftKeyboard(getContext());
        Utils.handler.postDelayed(new Runnable() { // from class: com.narvii.account.o0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1730a.lambda$onCreate$0();
            }
        }, 1000L);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sign_up_account_created, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TintButton) view.findViewById(R.id.success)).setTintColor(new AccountUtils(getContext()).getAccountForegroundColor());
    }
}
