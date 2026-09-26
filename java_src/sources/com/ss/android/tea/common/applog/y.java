package com.ss.android.tea.common.applog;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Pair;
import androidx.core.os.EnvironmentCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import com.bytedance.tea.common.utility.NetworkUtils;
import com.bytedance.tea.frameworks.core.encrypt.TTEncryptUtils;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes3.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f3181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static a f3182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f3183c;
    private static volatile boolean d;
    private static volatile int e;
    private static Object f = new Object();
    private static o g;

    public interface a {
        String a();

        int b();

        String c();

        String d();

        Context e();
    }

    public interface b {
    }

    public static String d() {
        return null;
    }

    public static void h(a aVar) {
        f3182b = aVar;
    }

    private static void a(Context context) {
        if (f3183c) {
            return;
        }
        synchronized (f) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("app_log_encrypt_switch_count", 0);
                e = sharedPreferences.getInt("app_log_encrypt_faild_count", 0);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putInt("app_log_encrypt_faild_count", e + 1);
                editorEdit.apply();
                f3183c = true;
            } catch (Throwable unused) {
            }
        }
    }

    public static void b(StringBuilder sb, boolean z6) {
        if (f3182b == null || sb == null) {
            return;
        }
        if (sb.toString().indexOf(63) < 0) {
            sb.append("?");
        } else {
            sb.append("&");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f(linkedHashMap, z6);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), entry.getValue()));
        }
        sb.append(NetworkUtils.a(arrayList, "UTF-8"));
    }

    private static void c(Context context) {
        if (d) {
            return;
        }
        synchronized (f) {
            try {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences("app_log_encrypt_switch_count", 0).edit();
                if (e > 2) {
                    e -= 2;
                } else {
                    e = 0;
                }
                editorEdit.putInt("app_log_encrypt_faild_count", e);
                editorEdit.apply();
                d = true;
            } catch (Throwable unused) {
            }
        }
    }

    public static void f(Map<String, String> map, boolean z6) {
        a aVar = f3182b;
        if (map == null || aVar == null) {
            return;
        }
        HashMap map2 = new HashMap();
        try {
            if (!t6.d.b(aVar.e())) {
                com.ss.android.tea.common.deviceregister.a.e(map2);
            } else if (Logger.debug()) {
                Logger.d("PushService", "idmap = " + com.bytedance.tea.common.utility.d.a(map2));
            }
        } catch (Exception unused) {
            com.ss.android.tea.common.deviceregister.a.e(map2);
        }
        String str = (String) map2.get("install_id");
        if (!com.bytedance.tea.common.utility.d.a(str)) {
            map.put("iid", str);
        }
        String str2 = (String) map2.get("device_id");
        if (!com.bytedance.tea.common.utility.d.a(str2)) {
            map.put("device_id", str2);
        }
        Context contextE = f3182b.e();
        if (contextE != null) {
            String strE = NetworkUtils.e(contextE);
            if (!com.bytedance.tea.common.utility.d.a(strE)) {
                map.put("ac", strE);
            }
        }
        String strC = f3182b.c();
        if (strC != null) {
            map.put("channel", strC);
        }
        map.put("aid", String.valueOf(f3182b.b()));
        String strD = f3182b.d();
        if (strD != null) {
            map.put("app_name", strD);
        }
        map.put("version_code", String.valueOf(com.ss.android.tea.common.applog.b.i()));
        map.put("version_name", com.ss.android.tea.common.applog.b.j());
        map.put("device_platform", "android");
        if (z6) {
            map.put("ssmix", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
        }
        map.put("device_type", Build.MODEL);
        map.put("device_brand", Build.BRAND);
        map.put("language", Locale.getDefault().getLanguage());
        map.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
        try {
            String strSubstring = Build.VERSION.RELEASE;
            if (strSubstring != null && strSubstring.length() > 10) {
                strSubstring = strSubstring.substring(0, 10);
            }
            map.put("os_version", strSubstring);
        } catch (Exception unused2) {
        }
        String strA = f3182b.a();
        if (!e(strA)) {
            map.put("uuid", strA);
        }
        String str3 = (String) map2.get("openudid");
        if (!com.bytedance.tea.common.utility.d.a(str3)) {
            map.put("openudid", str3);
        }
        map.put("manifest_version_code", String.valueOf(com.ss.android.tea.common.applog.b.i()));
        String strC2 = com.bytedance.tea.common.utility.e.c(f3182b.e());
        if (!com.bytedance.tea.common.utility.d.a(strC2)) {
            map.put("resolution", strC2);
        }
        int iD = com.bytedance.tea.common.utility.e.d(f3182b.e());
        if (iD > 0) {
            map.put("dpi", String.valueOf(iD));
        }
        map.put("update_version_code", String.valueOf(com.ss.android.tea.common.applog.b.i()));
        map.put("_rticket", String.valueOf(System.currentTimeMillis()));
    }

    public static boolean e(String str) {
        if (com.bytedance.tea.common.utility.d.a(str) || str.equalsIgnoreCase(EnvironmentCompat.MEDIA_UNKNOWN) || str.equalsIgnoreCase("Null")) {
            return true;
        }
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) != '0') {
                return false;
            }
        }
        return true;
    }

    public static String g(String str, byte[] bArr, Context context, boolean z6) throws Exception {
        boolean z10;
        String str2;
        if (com.bytedance.tea.common.utility.d.a(str) || bArr == null || bArr.length <= 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            a(context);
            if (e < 3) {
                byteArray = TTEncryptUtils.a(byteArray, byteArray.length);
                c(context);
                z10 = true;
            } else {
                z10 = false;
            }
            if (byteArray != null && z10) {
                if (str.indexOf(63) < 0) {
                    str2 = str + "?tt_data=a";
                } else {
                    str2 = str + "&tt_data=a";
                }
                HashMap map = new HashMap();
                map.put(MIME.CONTENT_TYPE, "application/octet-stream;tt-data=a");
                return NetworkClient.getDefault().post(str2, byteArray, map, (NetworkClient.a) null);
            }
            throw new RuntimeException("encrypt failed");
        } catch (Throwable th) {
            try {
                Logger.w("AppLog", "compress with gzip exception: " + th);
                return null;
            } finally {
                gZIPOutputStream.close();
            }
        }
    }
}
