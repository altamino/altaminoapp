package com.narvii.util;

import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class AccountWebHelper {
    private final AccountService account;
    HashMap hashMap = new HashMap();
    NVContext nvContext;

    public AccountWebHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.hashMap.put("deviceid", this.account.getDeviceId());
        this.hashMap.put("sid", this.account.getSessionID());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAccountUrlPrefix() {
        return "https://service" + NVApplication.MAIN_HOST + "/static/#/account/";
    }

    public String getForgetPasswordUrl(String str, String str2) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        boolean zIsEmpty2 = TextUtils.isEmpty(str2);
        HashMap map = new HashMap();
        if (!zIsEmpty) {
            map.put("phonenumber", str);
        }
        if (!zIsEmpty2) {
            map.put("email", str2);
        }
        map.put("deviceid", this.account.getDeviceId());
        return getAccountUrlPrefix() + "reset-password" + Utils.getUrlParam(map);
    }

    public String getForgetPasswordUrl() {
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        if (accountService != null) {
            return getForgetPasswordUrl(accountService.getPhoneNumber(), accountService.getEmail());
        }
        return getForgetPasswordUrl(null, null);
    }

    public String getUpdateEmailUrl() {
        return getAccountUrlPrefix() + "update-email" + Utils.getUrlParam(this.hashMap);
    }

    public String getActivateEmailUrl() {
        return getAccountUrlPrefix() + "activate-email" + Utils.getUrlParam(this.hashMap);
    }

    public String getUpdatePhoneNumberUrl(String str) {
        this.hashMap.put("phonenumber", str);
        return getAccountUrlPrefix() + "update-phone-number" + Utils.getUrlParam(this.hashMap);
    }

    public String getChangePasswordUrl() {
        return getAccountUrlPrefix() + "change-password" + Utils.getUrlParam(this.hashMap);
    }

    public void getDeleteAccountUrl(final Callback<String> callback) {
        this.hashMap.put("email", this.account.getEmail());
        this.hashMap.put("phonenumber", this.account.getPhoneNumber());
        new Thread() { // from class: com.narvii.util.AccountWebHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                AdvertisingIdClient.Info advertisingIdInfo;
                String string = null;
                try {
                    advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(NVApplication.instance());
                } catch (Exception unused) {
                }
                AccountWebHelper.this.hashMap.put("idfa", !advertisingIdInfo.isLimitAdTrackingEnabled() ? advertisingIdInfo.getId() : null);
                try {
                    string = Settings.Secure.getString(NVApplication.instance().getContentResolver(), "android_id");
                } catch (Exception unused2) {
                }
                AccountWebHelper.this.hashMap.put("androidid", string);
                final String str = AccountWebHelper.getAccountUrlPrefix() + "delete-account" + Utils.getUrlParam(AccountWebHelper.this.hashMap);
                Utils.post(new Runnable() { // from class: com.narvii.util.AccountWebHelper.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        callback.call(str);
                    }
                });
            }
        }.start();
    }

    public String getDeleteCommunityUrl(int i) {
        return getAccountUrlPrefix() + "delete-community/" + i + Utils.getUrlParam(this.hashMap);
    }
}
