package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public final String buildId;
    public final List<f> buildIdInfoList;
    public final com.google.firebase.crashlytics.internal.f developmentPlatformProvider;
    public final String googleAppId;
    public final String installerPackageName;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    private static String b(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
    }

    public a(String str, String str2, List<f> list, String str3, String str4, String str5, String str6, com.google.firebase.crashlytics.internal.f fVar) {
        this.googleAppId = str;
        this.buildId = str2;
        this.buildIdInfoList = list;
        this.installerPackageName = str3;
        this.packageName = str4;
        this.versionCode = str5;
        this.versionName = str6;
        this.developmentPlatformProvider = fVar;
    }

    public static a a(Context context, b0 b0Var, String str, String str2, List<f> list, com.google.firebase.crashlytics.internal.f fVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String strG = b0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strB = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = b0.DEFAULT_VERSION_NAME;
        }
        return new a(str, str2, list, strG, packageName, strB, str3, fVar);
    }
}
