package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import androidx.fragment.app.Fragment;
import com.narvii.account.liveramp.LiveRampHelper;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class UrlLoginFragment extends AccountBaseFragment {
    protected final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.UrlLoginFragment.1
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            String str2;
            String str3;
            NVToast.makeText(UrlLoginFragment.this.getContext(), str, 1).show();
            UrlLoginFragment.this.finish();
            String str4 = null;
            if (i10 == 200) {
                str2 = "WrongPassword";
            } else if (i10 == 216) {
                str2 = "AccountNotExist";
            } else {
                str2 = i10 == 0 ? "NetworkError" : null;
            }
            if (apiRequest.tag("email") != null) {
                str4 = (String) apiRequest.tag("email");
                str3 = null;
            } else {
                str3 = apiRequest.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER) != null ? (String) apiRequest.tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER) : null;
            }
            ((LoggingService) UrlLoginFragment.this.getService("logging")).lambda$logEvent$0("AccountError", "email", str4, "phone", str3, "code", Integer.valueOf(i10), "reason", str2, AccountNotice.LEVEL_MESSAGE, str);
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            Log.i("login success with " + apiRequest.tag("email"));
            accountResponse.sid.charAt(0);
            super.onFinish(apiRequest, accountResponse);
            UrlLoginFragment.this.finishWithResult(true, 0, null);
            Intent intentBackToMaster = MasterActivity.backToMaster((NVContext) UrlLoginFragment.this.getContext(), new Intent(UrlLoginFragment.this.getContext(), (Class<?>) MasterActivity.class));
            LiveRampHelper.setLRUserEmail(apiRequest.tag("email").toString());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UrlLoginFragment.this, intentBackToMaster);
        }
    };

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam(GlobalProfileFragment.KEY_USER);
        String stringParam2 = getStringParam("pass");
        if (!TextUtils.isEmpty(stringParam) && !TextUtils.isEmpty(stringParam2)) {
            AccountService accountService = (AccountService) getService("account");
            ApiService apiService = (ApiService) getService("api");
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post().global();
            builder.path("/auth/login");
            builder.param("email", stringParam);
            builder.param("secret", "0 " + stringParam2);
            builder.param(a0.a.o, accountService.getDeviceId());
            builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
            builder.param("action", NotificationChannelHelper.CHANNEL_NORMAL);
            builder.tag(stringParam);
            apiService.exec(builder.build(), this.listener);
            startSubmit();
            return;
        }
        finish();
    }
}
