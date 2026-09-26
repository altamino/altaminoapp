package com.narvii.setting;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.webview.WebViewFragment;

/* JADX INFO: loaded from: classes9.dex */
public class AccountWebViewFragment extends WebViewFragment {

    class AccountWebViewClient extends WebViewFragment.MyWebViewClient {
        AccountWebViewClient() {
            super();
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0033 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:13:0x003b A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:14:0x0047 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:16:0x004f A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:17:0x0055 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:19:0x005d A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:20:0x0079 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:22:0x0081 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:23:0x0087 A[Catch: Exception -> 0x0030, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:25:0x008d A[Catch: Exception -> 0x0030, TRY_LEAVE, TryCatch #0 {Exception -> 0x0030, blocks: (B:4:0x000c, B:6:0x001d, B:8:0x0029, B:11:0x0033, B:13:0x003b, B:14:0x0047, B:16:0x004f, B:17:0x0055, B:19:0x005d, B:20:0x0079, B:22:0x0081, B:23:0x0087, B:25:0x008d), top: B:33:0x000c }] */
        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) throws Throwable {
            if (!str.startsWith("amino-bridge://")) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            try {
                Uri uri = Uri.parse(str);
                String host = uri.getHost();
                if ("updateSecret".equals(host)) {
                    String queryParameter = uri.getQueryParameter("secret");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        AccountWebViewFragment.this.updateSecret(queryParameter);
                    } else if ("cleanCookie".equals(host)) {
                        AccountWebViewFragment.this.cleanCookie(uri.getQueryParameter("host"));
                    } else if ("emailActivated".equals(host)) {
                        AccountWebViewFragment.this.relogin();
                    } else if ("accountDeleted".equals(host)) {
                        ((StatisticsService) AccountWebViewFragment.this.getService("statistics")).event("Delete Account").userPropInc("Delete Account");
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.setting.AccountWebViewFragment.AccountWebViewClient.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((AccountService) AccountWebViewFragment.this.getService("account")).logout(true);
                                AccountWebViewFragment.this.popupLogout();
                            }
                        }, 1000L);
                    } else if ("communityDeleted".equals(host)) {
                        AccountWebViewFragment.this.communityDelete();
                    } else if ("accountVerified".equals(host)) {
                        Intent intent = new Intent();
                        intent.putExtra("accountVerified", true);
                        AccountWebViewFragment.this.setResult(-1, intent);
                        AccountWebViewFragment.this.finish();
                    }
                } else if ("cleanCookie".equals(host)) {
                    AccountWebViewFragment.this.cleanCookie(uri.getQueryParameter("host"));
                } else if ("emailActivated".equals(host)) {
                    AccountWebViewFragment.this.relogin();
                } else if ("accountDeleted".equals(host)) {
                    ((StatisticsService) AccountWebViewFragment.this.getService("statistics")).event("Delete Account").userPropInc("Delete Account");
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.setting.AccountWebViewFragment.AccountWebViewClient.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ((AccountService) AccountWebViewFragment.this.getService("account")).logout(true);
                            AccountWebViewFragment.this.popupLogout();
                        }
                    }, 1000L);
                } else if ("communityDeleted".equals(host)) {
                    AccountWebViewFragment.this.communityDelete();
                } else if ("accountVerified".equals(host)) {
                    Intent intent2 = new Intent();
                    intent2.putExtra("accountVerified", true);
                    AccountWebViewFragment.this.setResult(-1, intent2);
                    AccountWebViewFragment.this.finish();
                }
                return false;
            } catch (Exception e) {
                Log.w("fail to process url callback: " + str, e);
                return false;
            }
        }
    }

    protected void communityDelete() {
    }

    protected void popupLogout() {
    }

    @Override // com.narvii.webview.WebViewFragment
    protected WebViewClient createWebViewClient() {
        return new AccountWebViewClient();
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
        CookieManager.getInstance().removeAllCookies(null);
        CookieManager.getInstance().flush();
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
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

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hideToolbar(true);
        setShowProgress(true);
    }
}
