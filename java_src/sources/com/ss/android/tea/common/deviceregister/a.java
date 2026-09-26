package com.ss.android.tea.common.deviceregister;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import com.bytedance.tea.common.utility.Logger;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f3184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f3185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3186c;
    private static boolean d;
    private static Context e;
    private final d f;

    /* JADX INFO: renamed from: com.ss.android.tea.common.deviceregister.a$a, reason: collision with other inner class name */
    public interface InterfaceC0374a {
        void c(boolean z6, boolean z10);

        void d(boolean z6);

        void e(String str, String str2, String str3);
    }

    public interface b {
        void b(String str, Bundle bundle);

        void f(Context context, String str, String str2, String str3, long j6, long j10, JSONObject jSONObject);
    }

    public static void f(boolean z6) {
        f3186c = z6;
    }

    public static boolean q() {
        return d;
    }

    public static String a() {
        a aVar = f3184a;
        if (aVar == null) {
            return "";
        }
        String strJ = aVar.f.J();
        if (!Logger.debug()) {
            return strJ;
        }
        Logger.d("DeviceRegisterManager", "getInstallId() called,return value : " + strJ);
        return strJ;
    }

    public static void b(Context context) throws IllegalArgumentException {
        if (context == null) {
            throw new IllegalArgumentException("context = null");
        }
        f3185b = true;
        if (context instanceof Activity) {
            f3186c = true;
        }
        e = context.getApplicationContext();
        if (f3184a == null) {
            synchronized (a.class) {
                try {
                    if (f3184a == null) {
                        f3184a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (Logger.debug()) {
            Logger.d("DeviceRegisterManager", "DeviceRegister init, DeviceRegister : " + f3184a.toString() + ", process : " + Process.myPid());
        }
    }

    public static void e(Map<String, String> map) {
        a aVar = f3184a;
        if (map == null || aVar == null) {
            return;
        }
        String strK = k();
        if (strK != null) {
            map.put("openudid", strK);
        }
        String strL = l();
        if (strL != null) {
            map.put("clientudid", strL);
        }
        String strA = a();
        if (strA != null) {
            map.put("install_id", strA);
        }
        String strI = i();
        if (strI != null) {
            map.put("device_id", strI);
        }
    }

    public static void g(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        com.ss.android.tea.common.deviceregister.b.b(strArr[0]);
    }

    public static void h() {
        a aVar = f3184a;
        if (aVar != null) {
            aVar.f.S();
        }
    }

    public static String i() {
        a aVar = f3184a;
        if (aVar != null) {
            return aVar.f.F();
        }
        return null;
    }

    public static String j() {
        a aVar = f3184a;
        if (aVar != null) {
            return aVar.f.H();
        }
        return null;
    }

    public static String k() {
        a aVar = f3184a;
        if (aVar != null) {
            return aVar.f.u();
        }
        return null;
    }

    public static String l() {
        a aVar = f3184a;
        if (aVar != null) {
            return aVar.f.B();
        }
        return null;
    }

    public static void m() {
        a aVar = f3184a;
        if (aVar != null) {
            aVar.f.R();
        }
    }

    public static void n() {
        a aVar = f3184a;
        if (aVar != null) {
            aVar.f.P();
        }
    }

    public static void o() {
        a aVar = f3184a;
        if (aVar != null) {
            aVar.f.P();
        }
    }

    public static void p() {
        a aVar = f3184a;
        if (aVar != null) {
            aVar.f.N();
            if (Logger.debug()) {
                Logger.d("DeviceRegisterManager", "updateDeviceInfo call  device_register");
            }
        }
    }

    private a() {
        d dVar = new d(e);
        this.f = dVar;
        com.ss.android.tea.common.deviceregister.b.c(f3186c);
        e.c(dVar);
        dVar.L();
    }

    public static void c(InterfaceC0374a interfaceC0374a) {
        d.j(interfaceC0374a);
    }

    public static void d(b bVar) {
        com.ss.android.tea.common.deviceregister.b.a(bVar);
    }
}
