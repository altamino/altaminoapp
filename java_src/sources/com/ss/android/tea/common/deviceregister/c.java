package com.ss.android.tea.common.deviceregister;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f3191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f3192c;

    public static String a() {
        return f3190a;
    }

    public static String c() {
        return f3191b;
    }

    public static String e() {
        return f3192c;
    }

    public static void b(String str) {
        if (!com.bytedance.tea.common.utility.d.a(str) && !str.equals(f3190a)) {
            f3190a = str;
        }
    }

    public static void d(String str) {
        if (!com.bytedance.tea.common.utility.d.a(str) && !str.equals(f3191b)) {
            f3191b = str;
        }
    }

    public static void f(String str) {
        if (!com.bytedance.tea.common.utility.d.a(str) && !str.equals(f3192c)) {
            f3192c = str;
        }
    }
}
