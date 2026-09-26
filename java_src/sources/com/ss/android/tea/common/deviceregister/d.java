package com.ss.android.tea.common.deviceregister;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import com.bytedance.tea.common.utility.NetworkUtils;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.util.http.ApiRequest;
import com.ss.android.tea.common.applog.y;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.math.BigInteger;
import java.nio.channels.FileLock;
import java.security.SecureRandom;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f3193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f3194b;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static volatile String f3196u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f3198c;
    private final SharedPreferences d;
    private String e;
    private String f;
    private String g;
    private String h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f3199i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private JSONObject f3200j;
    private final Object k = new Object();
    private boolean l;
    private long m;
    private int n;
    private long o;
    private long p;
    private long s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f3201v;
    private static final Object q = new Object();
    private static final ThreadLocal<Boolean> r = new ThreadLocal<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Map<String, Object> f3195t = new HashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static List<WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a>> f3197w = new ArrayList();

    private class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3202a;

        a() {
            super("DeviceRegisterThread");
            this.f3202a = 0;
        }

        private void c(JSONObject jSONObject) {
            boolean z6;
            if (jSONObject == null) {
                return;
            }
            d.this.n = e.a();
            SharedPreferences.Editor editorEdit = d.this.d.edit();
            editorEdit.putInt("last_config_version", d.this.n);
            String str = d.this.f3199i;
            String strF = d.this.F();
            boolean zA = com.bytedance.tea.common.utility.d.a(strF);
            String strOptString = jSONObject.optString("install_id", null);
            String strOptString2 = jSONObject.optString("device_id", null);
            String strOptString3 = jSONObject.optString("ssid", null);
            boolean zE = y.e(strOptString2);
            boolean zE2 = y.e(strOptString);
            if (!zE && !zE2) {
                d.this.m = System.currentTimeMillis();
                editorEdit.putLong("last_config_time", d.this.m);
            }
            if (zE) {
                Bundle bundle = new Bundle();
                bundle.putString("response", jSONObject.toString());
                d.this.p("tt_fetch_did_error", bundle);
            }
            if (zE2 || strOptString.equals(d.this.f3199i)) {
                z6 = false;
            } else {
                d.this.f3199i = strOptString;
                if (!com.bytedance.tea.common.utility.d.a(str)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("old_id", str);
                        jSONObject2.put("new_id", strOptString);
                        d.this.i(null, "umeng", "iid_change", null, 0L, 0L, jSONObject2);
                    } catch (Exception unused) {
                    }
                }
                z6 = true;
            }
            if (!zE2 && !strOptString2.equals(strF)) {
                if (!com.bytedance.tea.common.utility.d.a(strF)) {
                    try {
                        String strU = d.this.u();
                        String strB = d.this.B();
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("old_id", strF);
                        jSONObject3.put("new_id", strOptString2);
                        jSONObject3.put("openudid", strU);
                        jSONObject3.put("clientudid", strB);
                        d.this.i(null, "umeng", "did_change", null, 0L, 0L, jSONObject3);
                    } catch (Exception unused2) {
                    }
                }
                z6 = true;
            }
            if (!com.bytedance.tea.common.utility.d.a(strOptString3) && !strOptString3.equalsIgnoreCase("0") && !strOptString3.equalsIgnoreCase("None") && !strOptString3.equals(d.this.h)) {
                d.this.h = strOptString3;
                z6 = true;
            }
            if (z6) {
                try {
                    d.this.f3200j.put("install_id", d.this.f3199i);
                    d.this.f3200j.put("device_id", strOptString2);
                    d.this.f3200j.put("ssid", d.this.h);
                    editorEdit.putString("install_id", d.this.f3199i);
                    editorEdit.putString("device_id", strOptString2);
                    editorEdit.putString("ssid", d.this.h);
                } catch (Exception unused3) {
                }
            }
            editorEdit.commit();
            if (z6) {
                d.this.f0();
            }
            d.this.r(true, zA);
        }

        private boolean d(String str) {
            String strPost;
            try {
                Logger.d("RegisterServiceController", "app_log_config: " + str);
                byte[] bytes = str.getBytes("UTF-8");
                String strE = b.e();
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean z6 = jCurrentTimeMillis - d.this.s < 600000;
                d.this.s = jCurrentTimeMillis;
                if (Logger.debug()) {
                    Logger.d("RegisterServiceController", "request url : " + strE);
                }
                byte[] bArr = (byte[]) bytes.clone();
                if (d.this.e0()) {
                    try {
                        strPost = y.g(strE, bArr, d.this.f3198c, z6);
                    } catch (RuntimeException unused) {
                        strPost = NetworkClient.getDefault().post(strE, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                    }
                } else {
                    strPost = NetworkClient.getDefault().post(strE, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                }
                if (strPost != null && strPost.length() != 0) {
                    Logger.v("RegisterServiceController", "device_register response: " + strPost);
                    c(new JSONObject(strPost));
                    return true;
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        private boolean e() {
            boolean z6 = this.f3202a < 2 && (y.e(d.this.F()) || y.e(d.this.J()));
            this.f3202a++;
            return z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            String strA;
            if (d.f3194b) {
                return;
            }
            try {
                d.this.p = System.currentTimeMillis();
                if (!NetworkUtils.b(d.this.f3198c)) {
                    return;
                }
                String strH = e.h(d.this.f3198c);
                if (!com.bytedance.tea.common.utility.d.a(strH)) {
                    d.this.f3200j.put("user_agent", strH);
                }
                JSONObject jSONObject = new JSONObject(new JSONTokener(d.this.f3200j.toString()));
                try {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("custom");
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                    }
                    HashMap map = new HashMap();
                    synchronized (d.f3195t) {
                        map.putAll(d.f3195t);
                    }
                    for (String str : map.keySet()) {
                        if (!com.bytedance.tea.common.utility.d.a(str) && map.get(str) != null) {
                            jSONObjectOptJSONObject.put(str, map.get(str));
                        }
                    }
                    jSONObject.put("custom", jSONObjectOptJSONObject);
                    if (com.ss.android.tea.common.deviceregister.a.q()) {
                        strA = r6.a.c(d.this.f3198c);
                    } else {
                        strA = null;
                    }
                    if (com.bytedance.tea.common.utility.d.a(strA)) {
                        strA = c.a();
                    }
                    if (!com.bytedance.tea.common.utility.d.a(strA)) {
                        jSONObject.put("google_aid", strA);
                    }
                    String strOptString = jSONObject.optString("user_unique_id", null);
                    String strOptString2 = jSONObject.optString("device_id", null);
                    if (!com.bytedance.tea.common.utility.d.a(d.f3196u)) {
                        jSONObject.put("user_unique_id", d.f3196u);
                    } else if (com.bytedance.tea.common.utility.d.a(strOptString) && !com.bytedance.tea.common.utility.d.a(strOptString2)) {
                        jSONObject.put("user_unique_id", strOptString2);
                    }
                } catch (Throwable unused) {
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("magic_tag", "ss_app_log");
                jSONObject2.put("header", jSONObject);
                jSONObject2.put("_gen_time", System.currentTimeMillis());
                boolean unused2 = d.f3194b = true;
                d.r.set(Boolean.TRUE);
                boolean zD = d(jSONObject2.toString());
                synchronized (d.q) {
                    boolean unused3 = d.f3194b = false;
                    try {
                        d.q.notifyAll();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                boolean unused4 = d.f3193a = true;
                d.r.remove();
                if (!zD) {
                    d.this.r(false, com.bytedance.tea.common.utility.d.a(d.this.F()));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        /* JADX WARN: Code duplicated, block: B:59:0x00db A[SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00eb, code lost:
        
            a();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z6;
            long j6;
            long j10;
            super.run();
            d.this.C(!com.bytedance.tea.common.utility.d.a(d.this.f3200j.optString("device_id", null)));
            d.this.d0();
            while (!d.this.l) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (d.this.n == e.a()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (!b.d() && d.this.o < 0 && z6) {
                    j6 = 43200000;
                } else {
                    j6 = 21600000;
                }
                if (z6) {
                    j10 = LiveLayerService.REFRESH_INTERVAL;
                } else {
                    j10 = 60000;
                }
                if (e()) {
                    j10 = 30000;
                }
                long jMax = Math.max(j6 - (jCurrentTimeMillis - d.this.m), j10 - (jCurrentTimeMillis - d.this.p));
                if (Logger.debug()) {
                    if (jMax >= 0) {
                        jCurrentTimeMillis += jMax;
                    }
                    Logger.d("RegisterServiceController", "next query time : " + DateFormat.getDateTimeInstance().format(new Date(jCurrentTimeMillis)));
                }
                synchronized (d.this.k) {
                    if (jMax > 0) {
                        try {
                            if (!d.this.l) {
                                d.this.k.wait(jMax);
                                if (d.this.l) {
                                }
                            }
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } else if (d.this.l) {
                    }
                }
            }
            if (Logger.debug()) {
                Logger.d("RegisterServiceController", "DeviceRegisterThread finished");
            }
        }
    }

    public static String c() {
        return f3196u;
    }

    private static boolean y(String str) {
        int length;
        if (str == null || (length = str.length()) < 13 || length > 128) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && ((cCharAt < 'A' || cCharAt > 'F') && cCharAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z6) {
        Iterator<WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a>> it = f3197w.iterator();
        while (it.hasNext()) {
            WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                com.ss.android.tea.common.deviceregister.a.InterfaceC0374a interfaceC0374a = next.get();
                if (interfaceC0374a == null) {
                    it.remove();
                } else {
                    try {
                        interfaceC0374a.d(z6);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    @SuppressLint({"TrulyRandom"})
    private static String d(Context context, boolean z6) throws Throwable {
        String string;
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            Logger.w("RegisterServiceController", "exception when getting ANDROID_ID: " + e);
            string = null;
        }
        if (string != null) {
            try {
                if (!string.equals("9774d56d682e549c") && string.length() >= 13) {
                    return string;
                }
            } catch (Exception e2) {
                Logger.w("RegisterServiceController", "exception when making openudid: " + e2);
                return string;
            }
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("snssdk_openudid", 0);
        String string2 = sharedPreferences.getString("openudid", null);
        if (!y(string2)) {
            string2 = new BigInteger(64, new SecureRandom()).toString(16);
            if (string2.charAt(0) == '-') {
                string2 = string2.substring(1);
            }
            int length = 13 - string2.length();
            if (length > 0) {
                StringBuilder sb = new StringBuilder();
                while (length > 0) {
                    sb.append('F');
                    length--;
                }
                sb.append(string2);
                string2 = sb.toString();
            }
            if (z6) {
                String strG = g("openudid.dat", string2);
                if (y(strG)) {
                    string2 = strG;
                }
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("openudid", string2);
            editorEdit.commit();
        }
        return string2;
    }

    private String e(SharedPreferences sharedPreferences) {
        String string;
        if (sharedPreferences == null && !TextUtils.isEmpty(this.g)) {
            return this.g;
        }
        if (sharedPreferences != null) {
            try {
                string = sharedPreferences.getString("device_id", "");
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } else {
            string = null;
        }
        if (!com.bytedance.tea.common.utility.d.a(string) && com.bytedance.tea.common.utility.d.a(string, this.g)) {
            return this.g;
        }
        this.g = string;
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        e.d("install_id", this.f3199i);
        e.d("device_id", F());
        e.d("ssid", this.h);
        Iterator<WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a>> it = f3197w.iterator();
        while (it.hasNext()) {
            WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                com.ss.android.tea.common.deviceregister.a.InterfaceC0374a interfaceC0374a = next.get();
                if (interfaceC0374a == null) {
                    it.remove();
                } else {
                    try {
                        interfaceC0374a.e(F(), this.f3199i, this.h);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static void j(com.ss.android.tea.common.deviceregister.a.InterfaceC0374a interfaceC0374a) {
        if (interfaceC0374a == null) {
            return;
        }
        f3197w.add(new WeakReference<>(interfaceC0374a));
    }

    public static void q(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        Map<String, Object> map2 = f3195t;
        synchronized (map2) {
            map2.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(boolean z6, boolean z10) {
        Iterator<WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a>> it = f3197w.iterator();
        while (it.hasNext()) {
            WeakReference<com.ss.android.tea.common.deviceregister.a.InterfaceC0374a> next = it.next();
            if (next == null) {
                it.remove();
            } else {
                com.ss.android.tea.common.deviceregister.a.InterfaceC0374a interfaceC0374a = next.get();
                if (interfaceC0374a == null) {
                    it.remove();
                } else {
                    try {
                        interfaceC0374a.c(z6, z10);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    private static String v(Context context) throws Throwable {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("snssdk_openudid", 0);
            String string = sharedPreferences.getString("clientudid", null);
            if (!y(string)) {
                string = UUID.randomUUID().toString();
                String strG = g("clientudid.dat", string);
                if (y(strG)) {
                    string = strG;
                }
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString("clientudid", string);
                editorEdit.commit();
            }
            return string;
        } catch (Exception e) {
            Logger.w("RegisterServiceController", "exception when making client_udid: " + e);
            return "";
        }
    }

    public String B() {
        if (com.bytedance.tea.common.utility.d.a(this.f)) {
            this.f = v(this.f3198c);
        }
        return this.f;
    }

    public String F() {
        return e(this.d);
    }

    public String H() {
        if (com.bytedance.tea.common.utility.d.a(this.h)) {
            this.h = this.d.getString("ssid", "");
        }
        return this.h;
    }

    public String J() {
        if (com.bytedance.tea.common.utility.d.a(this.f3199i)) {
            this.f3199i = this.d.getString("install_id", "");
        }
        return this.f3199i;
    }

    public void L() {
        JSONObject jSONObject = new JSONObject();
        this.f3200j = jSONObject;
        if (!e.g(this.f3198c, jSONObject) && Logger.debug()) {
            throw new RuntimeException("init header error.");
        }
        a aVar = new a();
        this.f3201v = aVar;
        aVar.start();
    }

    public void N() {
        a aVar = this.f3201v;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    public void R() {
        synchronized (this.k) {
            this.l = true;
            this.k.notifyAll();
        }
    }

    public void S() {
        synchronized (this.k) {
            this.k.notify();
        }
    }

    public String u() {
        if (com.bytedance.tea.common.utility.d.a(this.e)) {
            this.e = d(this.f3198c, true);
        }
        return this.e;
    }

    public d(Context context) {
        this.f3198c = context;
        this.d = context.getSharedPreferences("applog_stats", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i10 = this.d.getInt("last_config_version", 0);
        this.n = i10;
        if (i10 == e.a()) {
            long j6 = this.d.getLong("last_config_time", 0L);
            if (j6 <= jCurrentTimeMillis) {
                jCurrentTimeMillis = j6;
            }
            this.m = jCurrentTimeMillis;
        }
        this.f3199i = this.d.getString("install_id", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e0() {
        return b.f();
    }

    /* JADX WARN: Code duplicated, block: B:68:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:? A[SYNTHETIC] */
    private static String g(String str, String str2) throws Throwable {
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        int i10;
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return str2;
        }
        String str3 = Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.snssdk.api/cache";
        String str4 = str3 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str;
        FileLock fileLockLock = null;
        try {
            File file = new File(str3);
            if (!file.exists() && !file.mkdirs()) {
                return str2;
            }
            File file2 = new File(str4);
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rwd");
            try {
                fileLockLock = randomAccessFile2.getChannel().lock();
                if (file2.isFile() && (i10 = randomAccessFile2.read((bArr = new byte[129]), 0, 129)) > 0 && i10 < 129) {
                    String str5 = new String(bArr, 0, i10, "UTF-8");
                    if (y(str5)) {
                        if (fileLockLock != null) {
                            try {
                                fileLockLock.release();
                            } catch (Exception unused) {
                            }
                        }
                        try {
                            randomAccessFile2.close();
                        } catch (Exception unused2) {
                        }
                        return str5;
                    }
                }
                byte[] bytes = str2.getBytes("UTF-8");
                randomAccessFile2.setLength(0L);
                randomAccessFile2.write(bytes);
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                    } catch (Exception unused3) {
                    }
                }
                try {
                    randomAccessFile2.close();
                } catch (Exception unused4) {
                }
                return str2;
            } catch (Exception e) {
                randomAccessFile = randomAccessFile2;
                e = e;
            } catch (Throwable th) {
                randomAccessFile = randomAccessFile2;
                th = th;
                if (fileLockLock != null) {
                    try {
                        fileLockLock.release();
                    } catch (Exception unused5) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (Exception unused6) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
        try {
            Logger.d("RegisterServiceController", "load openudid exception " + e);
            if (fileLockLock != null) {
                try {
                    fileLockLock.release();
                } catch (Exception unused7) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (Exception unused8) {
                }
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
            if (fileLockLock != null) {
                fileLockLock.release();
            }
            if (randomAccessFile != null) {
                randomAccessFile.close();
                throw th;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Context context, String str, String str2, String str3, long j6, long j10, JSONObject jSONObject) {
        com.ss.android.tea.common.deviceregister.a.b bVarG = b.g();
        if (bVarG != null) {
            bVarG.f(context, str, str2, str3, j6, j10, jSONObject);
        }
    }

    public static void o(String str) {
        if (!com.bytedance.tea.common.utility.d.a(str) && !str.equals(f3196u)) {
            f3196u = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(String str, Bundle bundle) {
        com.ss.android.tea.common.deviceregister.a.b bVarG = b.g();
        if (bVarG != null) {
            bVarG.b(str, bundle);
        }
    }

    public void P() {
        this.o = System.currentTimeMillis();
    }
}
