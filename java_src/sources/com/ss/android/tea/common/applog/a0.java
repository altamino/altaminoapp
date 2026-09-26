package com.ss.android.tea.common.applog;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;

/* JADX INFO: loaded from: classes11.dex */
public class a0 {
    public static String a(Context context, String str) {
        Account[] accountsByType;
        if (context == null || AccountManager.get(context) == null || (accountsByType = AccountManager.get(context).getAccountsByType(str)) == null || accountsByType.length <= 0) {
            return null;
        }
        return accountsByType[0].name;
    }

    public static String b(Context context) {
        return a(context, "com.facebook.auth.login");
    }

    public static String c(Context context) {
        return a(context, "com.renren.renren_account_manager");
    }

    public static String d(Context context) {
        return a(context, "com.twitter.android.auth.login");
    }

    public static String e(Context context) {
        return a(context, "com.sina.weibo.account");
    }

    public static String f(Context context) {
        return a(context, "com.tencent.mm.account");
    }
}
