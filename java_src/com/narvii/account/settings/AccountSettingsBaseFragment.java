package com.narvii.account.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;

/* loaded from: classes2.dex */
public class AccountSettingsBaseFragment extends NVFragment {
    protected AccountService accountService;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.settings.AccountSettingsBaseFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                AccountSettingsBaseFragment.this.updateViews();
            }
        }
    };
    protected String sid;

    protected void updateViews() {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        this.sid = this.accountService.getSessionID();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    public void openWebPage(String str) {
        Intent intent = FragmentWrapperActivity.intent(MasterAccountWebViewFragment.class);
        intent.putExtra("url", str);
        startActivity(intent);
    }
}
