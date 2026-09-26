package com.ss.android.tea.common.deviceregister;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3187a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a.b f3188b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3189c = true;
    private static String d = "http://toblog.snssdk.com/service/2/device_register/";

    public static void a(a.b bVar) {
        f3188b = bVar;
    }

    public static void c(boolean z6) {
        f3187a = z6;
    }

    public static boolean d() {
        return f3187a;
    }

    public static String e() {
        return d;
    }

    public static boolean f() {
        return f3189c;
    }

    public static a.b g() {
        return f3188b;
    }

    public static void b(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return;
        }
        d = str;
    }
}
