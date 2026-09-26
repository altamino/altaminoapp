package com.narvii.account.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.app.NVFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes5.dex */
public class AccountSettingsBaseFragment extends NVFragment {
    public static final int SECURITY_VALIDATION_TARGET_TYPE_DIGITS = 3;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_EMAIL = 1;
    public static final int SECURITY_VALIDATION_TARGET_TYPE_GLOBAL_SMS = 8;
    protected AccountService accountService;
    protected AccountUtils accountUtils;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.account.settings.AccountSettingsBaseFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || AccountSettingsBaseFragment.this.getView() == null) {
                return;
            }
            AccountSettingsBaseFragment.this.updateViews();
        }
    };
    protected String sid;

    protected void updateViews() {
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    protected void requestSecurityCode(int i10, String str, Integer num, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/request-security-validation").param("type", Integer.valueOf(i10)).param("identity", str).param(a0.a.o, accountService.getDeviceId());
        if (num != null) {
            builderParam.param("level", num);
        }
        apiService.exec(builderParam.build(), apiResponseListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
        AccountService accountService = (AccountService) getService("account");
        this.accountService = accountService;
        this.sid = accountService.getSessionID();
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }
}
