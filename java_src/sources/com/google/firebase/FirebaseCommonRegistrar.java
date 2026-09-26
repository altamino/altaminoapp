package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    private static final String ANDROID_INSTALLER = "android-installer";
    private static final String ANDROID_PLATFORM = "android-platform";
    private static final String DEVICE_BRAND = "device-brand";
    private static final String DEVICE_MODEL = "device-model";
    private static final String DEVICE_NAME = "device-name";
    private static final String FIREBASE_ANDROID = "fire-android";
    private static final String FIREBASE_COMMON = "fire-core";
    private static final String KOTLIN = "kotlin";
    private static final String MIN_SDK = "android-min-sdk";
    private static final String TARGET_SDK = "android-target-sdk";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        return (i10 < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded";
    }

    private static String i(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<com.google.firebase.components.c<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(b5.c.b());
        arrayList.add(m4.f.g());
        arrayList.add(b5.h.b(FIREBASE_ANDROID, String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(b5.h.b(FIREBASE_COMMON, "20.4.2"));
        arrayList.add(b5.h.b(DEVICE_NAME, i(Build.PRODUCT)));
        arrayList.add(b5.h.b(DEVICE_MODEL, i(Build.DEVICE)));
        arrayList.add(b5.h.b(DEVICE_BRAND, i(Build.BRAND)));
        arrayList.add(b5.h.c(TARGET_SDK, new b5.h.a() { // from class: com.google.firebase.h
            @Override // b5.h.a
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.e((Context) obj);
            }
        }));
        arrayList.add(b5.h.c(MIN_SDK, new b5.h.a() { // from class: com.google.firebase.i
            @Override // b5.h.a
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.f((Context) obj);
            }
        }));
        arrayList.add(b5.h.c(ANDROID_PLATFORM, new b5.h.a() { // from class: com.google.firebase.j
            @Override // b5.h.a
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.g((Context) obj);
            }
        }));
        arrayList.add(b5.h.c(ANDROID_INSTALLER, new b5.h.a() { // from class: com.google.firebase.k
            @Override // b5.h.a
            public final String a(Object obj) {
                return FirebaseCommonRegistrar.h((Context) obj);
            }
        }));
        String strA = b5.e.a();
        if (strA != null) {
            arrayList.add(b5.h.b(KOTLIN, strA));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.targetSdkVersion);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null && Build.VERSION.SDK_INT >= 24) {
            return String.valueOf(applicationInfo.minSdkVersion);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName != null) {
            return i(installerPackageName);
        }
        return "";
    }
}
