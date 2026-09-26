package com.ss.android.tea.common.applog;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    private static final String TAG = "TeaAgent";

    public static void f(Context context, String str, String str2, String str3, long j6, long j10, JSONObject jSONObject) {
        g(context, str, str2, str3, j6, j10, false, jSONObject);
    }

    public static <T> T a(String str, T t5, Class<T> cls) {
        return (T) a.a(str, t5, cls);
    }

    public static JSONObject b() {
        return a.b();
    }

    public static void c(Map<String, String> map) {
        b.s0(map);
    }

    public static String d() {
        return b.u0();
    }

    public static void e(f fVar) {
        e.a(fVar);
    }

    public static void g(Context context, String str, String str2, String str3, long j6, long j10, boolean z6, JSONObject jSONObject) {
        b.A(context, str, str2, str3, j6, j10, z6, jSONObject);
    }

    public static void h(Context context) {
        b.H0(context);
    }

    public static void i(Context context) {
        b.J0(context);
    }

    public static void j(Map<String, Object> map) {
        b.S0(map);
    }

    public static void k(String str) {
        b.T0(str);
    }
}
