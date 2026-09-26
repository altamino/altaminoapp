package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class g0 {
    private static final String ACTION_C2DM_REGISTER = "com.google.android.c2dm.intent.REGISTER";
    private static final String ACTION_IID_TOKEN_REQUEST = "com.google.iid.TOKEN_REQUEST";
    static final int GMSCORE_NOT_FOUND = 0;
    private static final String GMSCORE_SEND_PERMISSION = "com.google.android.c2dm.permission.SEND";
    static final String GMS_PACKAGE = "com.google.android.gms";
    static final int IID_VIA_RECEIVER = 2;
    static final int IID_VIA_SERVICE = 1;

    @GuardedBy
    private String appVersionCode;

    @GuardedBy
    private String appVersionName;
    private final Context context;

    @GuardedBy
    private int gmsVersionCode;

    @GuardedBy
    private int iidImplementation = 0;

    private synchronized void h() {
        PackageInfo packageInfoF = f(this.context.getPackageName());
        if (packageInfoF != null) {
            this.appVersionCode = Integer.toString(packageInfoF.versionCode);
            this.appVersionName = packageInfoF.versionName;
        }
    }

    synchronized String a() {
        try {
            if (this.appVersionCode == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.appVersionCode;
    }

    synchronized String b() {
        try {
            if (this.appVersionName == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.appVersionName;
    }

    synchronized int d() {
        PackageInfo packageInfoF;
        try {
            if (this.gmsVersionCode == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
                this.gmsVersionCode = packageInfoF.versionCode;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.gmsVersionCode;
    }

    synchronized int e() {
        int i10 = this.iidImplementation;
        if (i10 != 0) {
            return i10;
        }
        PackageManager packageManager = this.context.getPackageManager();
        if (packageManager.checkPermission(GMSCORE_SEND_PERMISSION, "com.google.android.gms") == -1) {
            Log.e(e.TAG, "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent(ACTION_C2DM_REGISTER);
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.iidImplementation = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent(ACTION_IID_TOKEN_REQUEST);
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.iidImplementation = 2;
            return 2;
        }
        Log.w(e.TAG, "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.iidImplementation = 2;
        } else {
            this.iidImplementation = 1;
        }
        return this.iidImplementation;
    }

    private PackageInfo f(String str) {
        try {
            return this.context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(e.TAG, "Failed to find package " + e);
            return null;
        }
    }

    g0(Context context) {
        this.context = context;
    }

    static String c(com.google.firebase.f fVar) {
        String strD = fVar.n().d();
        if (strD != null) {
            return strD;
        }
        String strC = fVar.n().c();
        if (!strC.startsWith("1:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    boolean g() {
        if (e() != 0) {
            return true;
        }
        return false;
    }
}
