package com.google.firebase.crashlytics.internal.common;

import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
class d0 {
    private static final String NO_INSTALLER_PACKAGE_NAME = "";
    private String installerPackageName;

    synchronized String a(Context context) {
        try {
            if (this.installerPackageName == null) {
                this.installerPackageName = b(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return "".equals(this.installerPackageName) ? null : this.installerPackageName;
    }

    d0() {
    }

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName == null) {
            return "";
        }
        return installerPackageName;
    }
}
