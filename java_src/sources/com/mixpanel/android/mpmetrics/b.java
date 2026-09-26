package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes9.dex */
class b {
    public static String LOGTAG = "MixpanelAPI.ConfigurationChecker";

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (packageManager != null && packageName != null) {
            if (packageManager.checkPermission("android.permission.INTERNET", packageName) != 0) {
                com.mixpanel.android.util.d.k(LOGTAG, "Package does not have permission android.permission.INTERNET - Mixpanel will not work at all!");
                com.mixpanel.android.util.d.e(LOGTAG, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />");
                return false;
            }
            return true;
        }
        com.mixpanel.android.util.d.k(LOGTAG, "Can't check configuration when using a Context with null packageManager or packageName");
        return false;
    }
}
