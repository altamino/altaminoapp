package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.master.MasterActivity;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.List;

/* loaded from: classes2.dex */
public class UrlLoginFragment extends AccountBaseFragment {
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.UrlLoginFragment.1
        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            Log.i("login success with " + ((String) apiRequest.tag("email")));
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            UrlLoginFragment.this.finishWithResult(true, 0, null);
            UrlLoginFragment.this.startActivity(MasterActivity.backToMaster((NVContext) UrlLoginFragment.this.getContext(), new Intent(UrlLoginFragment.this.getContext(), (Class<?>) MasterActivity.class)));
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            String str2;
            NVToast.makeText(UrlLoginFragment.this.getContext(), str, 1).show();
            UrlLoginFragment.this.finish();
            String str3 = null;
            String str4 = i == 200 ? "WrongPassword" : i == 216 ? "AccountNotExist" : i == 0 ? "NetworkError" : null;
            if (apiRequest.tag("email") != null) {
                str3 = (String) apiRequest.tag("email");
                str2 = null;
            } else {
                str2 = apiRequest.tag("phoneNumber") != null ? (String) apiRequest.tag("phoneNumber") : null;
            }
            ((LoggingService) UrlLoginFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("AccountError", "email", str3, CodeVerifyFragment.KEY_PHONE, str2, "code", Integer.valueOf(i), "reason", str4, AccountNotice.LEVEL_MESSAGE, str);
        }
    };

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam(GlobalProfileFragment.KEY_USER);
        String stringParam2 = getStringParam("pass");
        if (TextUtils.isEmpty(stringParam) || TextUtils.isEmpty(stringParam2)) {
            finish();
            return;
        }
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/login");
        builder.param("email", stringParam);
        builder.param("secret", "0 " + stringParam2);
        builder.param("deviceID", accountService.getDeviceId());
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
        builder.tag(stringParam);
        apiService.exec(builder.build(), this.listener);
        startSubmit();
    }
}
