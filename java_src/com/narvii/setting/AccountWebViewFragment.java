package com.narvii.setting;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebViewClient;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.webview.WebViewFragment;

/* loaded from: classes3.dex */
public class AccountWebViewFragment extends WebViewFragment {
    protected void communityDelete() {
    }

    protected void popupLogout() {
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hideToolbar(true);
        setShowProgress(true);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        final FragmentActivity activity = getActivity();
        setActionBarRightButton(R.string.close, getResources().getDrawable(R.drawable.webview_button_close_bg), new View.OnClickListener() { // from class: com.narvii.setting.AccountWebViewFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                activity.finish();
            }
        });
        activity.getActionBar().getCustomView().findViewById(R.id.actionbar_back).setVisibility(8);
    }

    void updateSecret(String str) throws Throwable {
        AccountService accountService = (AccountService) getService("account");
        AccountKeychain keychain = accountService.getKeychain();
        if (keychain == null || TextUtils.isEmpty(keychain.uid)) {
            return;
        }
        accountService.setKeychain(keychain.uid, keychain.email, str);
        relogin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relogin() {
        if (getActivity() != null) {
            new ProgressDialog(getActivity()).show();
        }
        ((AccountService) getService("account")).relogin(new Callback<User>() { // from class: com.narvii.setting.AccountWebViewFragment.2
            @Override // com.narvii.util.Callback
            public void call(User user) {
                if (AccountWebViewFragment.this.isDestoryed() || AccountWebViewFragment.this.getActivity() == null) {
                    return;
                }
                AccountWebViewFragment.this.getActivity().setResult(-1);
                AccountWebViewFragment.this.getActivity().finish();
            }
        });
    }

    void cleanCookie(String str) {
        if (Build.VERSION.SDK_INT >= 22) {
            CookieManager.getInstance().removeAllCookies(null);
            CookieManager.getInstance().flush();
            return;
        }
        CookieSyncManager cookieSyncManagerCreateInstance = CookieSyncManager.createInstance(getContext());
        cookieSyncManagerCreateInstance.startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookie();
        cookieManager.removeSessionCookie();
        cookieSyncManagerCreateInstance.stopSync();
        cookieSyncManagerCreateInstance.sync();
    }

    @Override // com.narvii.webview.WebViewFragment
    protected WebViewClient createWebViewClient() {
        return new AccountWebViewClient();
    }

    class AccountWebViewClient extends WebViewFragment.MyWebViewClient {
        AccountWebViewClient() {
            super();
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x002f A[Catch: Exception -> 0x008e, TryCatch #0 {Exception -> 0x008e, blocks: (B:4:0x000c, B:6:0x001c, B:8:0x0028, B:9:0x002f, B:11:0x0037, B:12:0x0044, B:14:0x004c, B:15:0x0052, B:17:0x005a, B:18:0x0065, B:20:0x006d, B:21:0x0073, B:23:0x0079), top: B:32:0x000c }] */
        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) throws java.lang.Throwable {
            /*
                r5 = this;
                java.lang.String r0 = "Delete Account"
                java.lang.String r1 = "accountVerified"
                java.lang.String r2 = "amino-bridge://"
                boolean r2 = r7.startsWith(r2)
                if (r2 == 0) goto La5
                android.net.Uri r6 = android.net.Uri.parse(r7)     // Catch: java.lang.Exception -> L8e
                java.lang.String r2 = r6.getHost()     // Catch: java.lang.Exception -> L8e
                java.lang.String r3 = "updateSecret"
                boolean r3 = r3.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r3 == 0) goto L2f
                java.lang.String r3 = "secret"
                java.lang.String r3 = r6.getQueryParameter(r3)     // Catch: java.lang.Exception -> L8e
                boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L8e
                if (r4 != 0) goto L2f
                com.narvii.setting.AccountWebViewFragment r6 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                r6.updateSecret(r3)     // Catch: java.lang.Exception -> L8e
                goto La3
            L2f:
                java.lang.String r3 = "cleanCookie"
                boolean r3 = r3.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r3 == 0) goto L44
                com.narvii.setting.AccountWebViewFragment r0 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                java.lang.String r1 = "host"
                java.lang.String r6 = r6.getQueryParameter(r1)     // Catch: java.lang.Exception -> L8e
                r0.cleanCookie(r6)     // Catch: java.lang.Exception -> L8e
                goto La3
            L44:
                java.lang.String r6 = "emailActivated"
                boolean r6 = r6.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r6 == 0) goto L52
                com.narvii.setting.AccountWebViewFragment r6 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                com.narvii.setting.AccountWebViewFragment.access$000(r6)     // Catch: java.lang.Exception -> L8e
                goto La3
            L52:
                java.lang.String r6 = "accountDeleted"
                boolean r6 = r6.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r6 == 0) goto L65
                com.narvii.setting.AccountWebViewFragment$AccountWebViewClient$1 r6 = new com.narvii.setting.AccountWebViewFragment$AccountWebViewClient$1     // Catch: java.lang.Exception -> L8e
                r6.<init>()     // Catch: java.lang.Exception -> L8e
                r0 = 1000(0x3e8, double:4.94E-321)
                com.narvii.util.Utils.postDelayed(r6, r0)     // Catch: java.lang.Exception -> L8e
                goto La3
            L65:
                java.lang.String r6 = "communityDeleted"
                boolean r6 = r6.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r6 == 0) goto L73
                com.narvii.setting.AccountWebViewFragment r6 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                r6.communityDelete()     // Catch: java.lang.Exception -> L8e
                goto La3
            L73:
                boolean r6 = r1.equals(r2)     // Catch: java.lang.Exception -> L8e
                if (r6 == 0) goto La3
                android.content.Intent r6 = new android.content.Intent     // Catch: java.lang.Exception -> L8e
                r6.<init>()     // Catch: java.lang.Exception -> L8e
                r0 = 1
                r6.putExtra(r1, r0)     // Catch: java.lang.Exception -> L8e
                com.narvii.setting.AccountWebViewFragment r0 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                r1 = -1
                r0.setResult(r1, r6)     // Catch: java.lang.Exception -> L8e
                com.narvii.setting.AccountWebViewFragment r6 = com.narvii.setting.AccountWebViewFragment.this     // Catch: java.lang.Exception -> L8e
                r6.finish()     // Catch: java.lang.Exception -> L8e
                goto La3
            L8e:
                r6 = move-exception
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "fail to process url callback: "
                r0.append(r1)
                r0.append(r7)
                java.lang.String r7 = r0.toString()
                com.narvii.util.Log.w(r7, r6)
            La3:
                r6 = 0
                return r6
            La5:
                boolean r6 = super.shouldOverrideUrlLoading(r6, r7)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.setting.AccountWebViewFragment.AccountWebViewClient.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }
}
