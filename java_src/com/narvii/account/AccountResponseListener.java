package com.narvii.account;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.model.User;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes2.dex */
public class AccountResponseListener extends ApiJsonResponseListener<AccountResponse> {
    boolean accountChanged;
    private NVContext context;
    SharedPreferences sharedPreferences;
    boolean sidChanged;

    public AccountResponseListener(NVContext nVContext) {
        super(AccountResponse.class);
        this.accountChanged = false;
        this.sidChanged = false;
        this.context = nVContext;
    }

    protected void secret(AccountResponse accountResponse) throws Throwable {
        if (accountResponse.account == null || TextUtils.isEmpty(accountResponse.secret)) {
            return;
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        String strNodeString = JacksonUtils.nodeString(json(), "account", "email");
        String strNodeString2 = JacksonUtils.nodeString(json(), "account", "phoneNumber");
        if (TextUtils.isEmpty(strNodeString)) {
            strNodeString = TextUtils.isEmpty(strNodeString2) ? "" : strNodeString2;
        }
        accountService.setKeychain(accountResponse.account.uid, strNodeString, accountResponse.secret);
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
        String str;
        boolean z;
        boolean z2;
        AccountService accountService = (AccountService) this.context.getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        SharedPreferences.Editor editorEdit = prefs.edit();
        this.sharedPreferences = (SharedPreferences) this.context.getService("prefs");
        this.accountChanged = false;
        this.sidChanged = false;
        AuidService auidService = (AuidService) this.context.getService("auid");
        ObjectNode accountJson = accountService.getAccountJson();
        StringBuilder sb = new StringBuilder();
        sb.append(JacksonUtils.nodeString(accountJson, "email"));
        sb.append(JacksonUtils.nodeString(accountJson, "phoneNumber"));
        sb.append(JacksonUtils.nodeString(accountJson, "facebookID"));
        sb.append(JacksonUtils.nodeString(accountJson, "googleID"));
        sb.append(JacksonUtils.nodeInt(accountJson, "activation"));
        sb.append(JacksonUtils.nodeInt(accountJson, "emailActivation"));
        sb.append(JacksonUtils.nodeInt(accountJson, "phoneNumberActivation"));
        sb.append(JacksonUtils.nodeInt(accountJson, "aminoId"));
        sb.append(JacksonUtils.nodeInt(accountJson, "aminoIdEditable"));
        String string = sb.toString();
        if (TextUtils.isEmpty(accountResponse.sid)) {
            str = string;
            z = false;
        } else {
            if (accountService.hasAccount()) {
                str = string;
                if (Utils.isEqualsNotNull(accountResponse.account.uid, accountService.getUserId())) {
                    editorEdit.putString("sid", accountResponse.sid);
                    if (auidService != null) {
                        auidService.saveAuid(accountResponse.auid);
                    }
                    Log.i("account sid updated to " + accountResponse.sid);
                } else {
                    accountService.logout(false);
                    SharedPreferences.Editor editorEdit2 = prefs.edit();
                    this.accountChanged = true;
                    editorEdit2.putString("sid", accountResponse.sid);
                    editorEdit2.putString("uid", accountResponse.account.uid);
                    if (auidService != null) {
                        auidService.saveAuid(accountResponse.auid);
                    }
                    Log.i("account switch to " + accountResponse.account.nickname);
                    editorEdit = editorEdit2;
                    z2 = true;
                    z = true;
                    this.sidChanged = z2;
                }
            } else {
                str = string;
                editorEdit.putString("sid", accountResponse.sid);
                editorEdit.putString("uid", accountResponse.account.uid);
                if (auidService != null) {
                    auidService.saveAuid(accountResponse.auid);
                }
                this.accountChanged = true;
                Log.i("login to " + accountResponse.account.nickname);
            }
            z2 = true;
            z = false;
            this.sidChanged = z2;
        }
        ObjectNode objectNode = (ObjectNode) json().get("account");
        editorEdit.putString("account", objectNode.toString());
        editorEdit.commit();
        if (accountService.getUserAccount() != null && NVApplication.CLIENT_TYPE != 200) {
            ContentLanguageService contentLanguageService = (ContentLanguageService) this.context.getService("content_language");
            String contentLanguage = accountService.getUserAccount().getContentLanguage();
            String strLanguageUserSelected = contentLanguageService.languageUserSelected();
            if (contentLanguage != null) {
                if (strLanguageUserSelected == null && Utils.isEqualsNotNull(contentLanguageService.getRequestPrefLanguageWithLocalAsDefault(), contentLanguage)) {
                    contentLanguageService.saveLanguageCode(contentLanguage, false);
                } else if (!Utils.isEqualsNotNull(strLanguageUserSelected, contentLanguage)) {
                    contentLanguageService.saveLanguageCode(contentLanguage);
                }
            } else if (strLanguageUserSelected != null) {
                updateUserContentLanguage(strLanguageUserSelected, accountService.getUserId());
            }
        }
        storeLastAccountInfo(JacksonUtils.nodeString(objectNode, "email"), JacksonUtils.nodeString(objectNode, "phoneNumber"));
        User user = accountResponse.userProfile;
        if (user != null) {
            accountService.updateProfile(user, accountResponse.timestamp, 0, true);
        }
        if (!this.accountChanged) {
            sb.setLength(0);
            sb.append(JacksonUtils.nodeString(objectNode, "email"));
            sb.append(JacksonUtils.nodeString(objectNode, "phoneNumber"));
            sb.append(JacksonUtils.nodeString(objectNode, "facebookID"));
            sb.append(JacksonUtils.nodeString(objectNode, "googleID"));
            sb.append(JacksonUtils.nodeInt(objectNode, "activation"));
            sb.append(JacksonUtils.nodeInt(objectNode, "emailActivation"));
            sb.append(JacksonUtils.nodeInt(objectNode, "phoneNumberActivation"));
            sb.append(JacksonUtils.nodeInt(objectNode, "aminoId"));
            sb.append(JacksonUtils.nodeInt(objectNode, "aminoIdEditable"));
            if (!sb.toString().equals(str)) {
                this.accountChanged = true;
            }
        }
        if (z) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.AccountResponseListener.1
            @Override // java.lang.Runnable
            public void run() {
                AccountResponseListener accountResponseListener = AccountResponseListener.this;
                if (accountResponseListener.accountChanged) {
                    LocalBroadcastManager.getInstance(AccountResponseListener.this.context.getContext()).sendBroadcast(new Intent(AccountService.ACTION_ACCOUNT_CHANGED));
                } else if (accountResponseListener.sidChanged) {
                    LocalBroadcastManager.getInstance(AccountResponseListener.this.context.getContext()).sendBroadcast(new Intent(AccountService.ACTION_SID_CHANGED));
                }
            }
        }, 100L);
        secret(accountResponse);
    }

    private void storeLastAccountInfo(String str, String str2) {
        this.sharedPreferences.edit().putString("last_email", str).apply();
        this.sharedPreferences.edit().putString("last_phoneNumber", str2).apply();
    }

    private void updateUserContentLanguage(String str, String str2) {
        if (str2 == null) {
            return;
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest.Builder builderPath = new ApiRequest.Builder().post().global().path("/account/" + str2);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("contentLanguage", str);
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        builderPath.body(objectNodeCreateObjectNode);
        apiService.exec(builderPath.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.AccountResponseListener.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str3, apiResponse, th);
            }
        });
    }
}
