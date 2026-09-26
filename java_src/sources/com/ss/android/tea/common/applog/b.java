package com.ss.android.tea.common.applog;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import com.bytedance.tea.common.utility.NetworkUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.notice.AccountNotice;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.util.DateUtils;
import com.narvii.util.http.ApiRequest;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class b implements y.a, b0.a, com.ss.android.tea.common.deviceregister.a.InterfaceC0374a, com.ss.android.tea.common.deviceregister.a.b, Thread.UncaughtExceptionHandler {
    private static boolean A = true;
    private static boolean L = false;
    private static volatile boolean M = false;
    private static volatile boolean N = false;
    private static long O = 0;
    private static b T = null;
    private static long aE = 0;
    private static volatile boolean aG = false;
    private static volatile long aI = 0;
    private static volatile String aL = null;
    private static volatile long aN = 0;
    static e d = null;
    static i e = null;
    static String f = null;
    static String g = null;
    static String h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static String f3094i = null;
    public static int r = 0;
    private static com.ss.android.tea.common.applog.h s = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static boolean f3095v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f3096w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static boolean f3097x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f3098y = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static boolean f3099z = true;
    private volatile long B;
    private volatile long C;
    private volatile JSONObject D;
    private volatile JSONObject E;
    private volatile String F;
    private volatile String G;
    private volatile String H;
    private volatile JSONObject I;
    private volatile boolean J;
    private final n6.a aD;
    private c0 aF;
    private long aP;
    private volatile String aS;
    private volatile int aT;
    private volatile long aU;
    private volatile int aV;
    private volatile boolean aW;
    private final Context ac;
    private final JSONObject ad;
    private final JSONObject ae;
    private final JSONObject af;
    private final JSONObject ag;
    private x ao;
    Thread.UncaughtExceptionHandler o;
    h p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Context f3103t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f3104u;
    private static final Object K = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f3091a = {"appkey", "udid", "openudid", "sdk_version", "package", "channel", "display_name", "app_version", "version_code", "timezone", "access", "os", "os_version", "os_api", "device_model", "device_brand", "device_manufacturer", "language", "resolution", "display_density", "density_dpi", "mc", "carrier", "mcc_mnc", "clientudid", "install_id", "device_id", "sig_hash", "aid", "push_sdk", "rom", "aliyun_uuid", "release_build", "update_version_code", "manifest_version_code", "cpu_abi", "build_serial", "app_track", "custom", "sdk_version_name", "user_unique_id", "ab_version", "region", "tz_name", "tz_offset", "sim_region", "ssid", "ab_server_version", "google_aid", "app_language", "app_region"};
    private static String P = "toblog.snssdk.com";
    private static String Q = "ichannel.snssdk.com";
    private static final SimpleDateFormat R = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    private static final Object S = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile boolean f3092b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static AtomicLong f3093c = new AtomicLong();
    private static boolean U = false;
    private static String V = "";
    private static int W = 1;
    private static boolean aC = false;
    static int q = 0;
    private static volatile boolean aH = false;
    private static final Map<String, Object> aM = new HashMap();
    private static final Object aQ = new Object();
    private static final ThreadLocal<Boolean> aR = new ThreadLocal<>();
    private static WeakReference<d> aX = null;
    private long X = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    NetworkUtils.NetworkType f3102j = null;
    volatile boolean k = true;
    final LinkedList<f> l = new LinkedList<>();
    final LinkedList<u> m = new LinkedList<>();
    volatile w n = null;
    private com.ss.android.tea.common.applog.i Y = null;
    private b0 Z = null;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f3100aa = 0;
    private long ab = 0;
    private long ah = 0;

    /* JADX INFO: renamed from: ai, reason: collision with root package name */
    private boolean f3101ai = false;
    private boolean aj = false;
    private boolean ak = false;
    private final HashSet<Integer> al = new HashSet<>();
    private volatile boolean am = false;
    private final AtomicBoolean an = new AtomicBoolean();
    private long ap = 30000;
    private long aq = 0;
    private int ar = 1;
    private HashSet<Integer> as = new HashSet<>();
    private int at = 8192;
    private JSONObject au = null;
    private AtomicInteger av = new AtomicInteger();
    private AtomicInteger aw = new AtomicInteger();
    private long ax = System.currentTimeMillis();
    private volatile long ay = 0;
    private volatile long az = 0;
    private volatile boolean aA = false;
    private int aB = 0;
    private final ConcurrentHashMap<String, String> aJ = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, String> aK = new ConcurrentHashMap<>();
    private final AtomicLong aO = new AtomicLong();

    class a extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f3105a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f3106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f3107c;

        a(String str, boolean z6, boolean z10) {
            this.f3105a = str;
            this.f3106b = z6;
            this.f3107c = z10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            b.this.T(this.f3105a, this.f3106b, this.f3107c);
        }
    }

    public interface d {
        void a();
    }

    public interface e {
        void a(long j6, String str, JSONObject jSONObject);

        void b(long j6, String str, JSONObject jSONObject);
    }

    private class g extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3113b;

        public g() {
            super("ActionReaper");
            this.f3113b = false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
        
            if (r1 == null) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00a1, code lost:
        
            r5.f3112a.Z(r1);
            r5.f3113b = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ab, code lost:
        
            if (r5.f3113b == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
        
            r5.f3113b = false;
            r5.f3112a.P0();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            f fVarPoll;
            b.this.t();
            if (!b.this.r()) {
                Logger.w("AppLog", "can not setup LogReaper");
                return;
            }
            b.this.P0();
            while (true) {
                synchronized (b.this.l) {
                    try {
                        if (!b.f3092b) {
                            if (b.this.l.isEmpty()) {
                                try {
                                    if (n6.b.f3284a) {
                                        if (this.f3113b || b.this.aW) {
                                            b bVar = b.this;
                                            bVar.l.wait(bVar.ap);
                                        } else {
                                            b.this.l.wait();
                                        }
                                    } else if (this.f3113b) {
                                        b bVar2 = b.this;
                                        bVar2.l.wait(bVar2.ap);
                                    } else {
                                        b.this.l.wait();
                                    }
                                } catch (InterruptedException unused) {
                                }
                                if (!b.f3092b) {
                                    fVarPoll = !b.this.l.isEmpty() ? b.this.l.poll() : null;
                                }
                            } else {
                                fVarPoll = b.this.l.poll();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                b.this.W0();
                b.this.R(true, false);
                b.this.s();
            }
            Logger.d("AppLog", "ActionReadper quit");
        }
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f3114a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f3115b;

        public h(String str, int i10) {
            this.f3115b = str;
            this.f3114a = i10;
        }

        public h() {
        }
    }

    public interface i {
    }

    static JSONObject B0() {
        try {
            b bVar = T;
            if (bVar != null) {
                return bVar.k();
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    static boolean E0() {
        return !aH;
    }

    static boolean F0() {
        return true;
    }

    public static void G0(Context context, String str, String str2, String str3, long j6, long j10, JSONObject jSONObject) {
        A(context, str, str2, str3, j6, j10, false, jSONObject);
    }

    static boolean K0() {
        return true;
    }

    static int i() {
        return W;
    }

    static String j() {
        return V;
    }

    private synchronized void m() {
        if (this.aO.get() >= this.aP - 2) {
            n();
        }
    }

    public static b r0() {
        return T;
    }

    void R(boolean z6, boolean z10) {
        S(z6, false, z10);
    }

    void U0() {
    }

    @Override // com.ss.android.tea.common.applog.y.a
    public String a() {
        return Z0();
    }

    @Override // com.ss.android.tea.common.applog.y.a
    public int b() {
        n6.a aVar = this.aD;
        if (aVar != null) {
            return aVar.a();
        }
        return 0;
    }

    @Override // com.ss.android.tea.common.applog.y.a
    public String c() {
        n6.a aVar = this.aD;
        return aVar != null ? aVar.d() : "";
    }

    @Override // com.ss.android.tea.common.applog.y.a
    public String d() {
        n6.a aVar = this.aD;
        return aVar != null ? aVar.getAppName() : "";
    }

    @Override // com.ss.android.tea.common.applog.y.a
    public Context e() {
        return this.ac;
    }

    void g() {
        try {
            try {
                PackageInfo packageInfo = this.ac.getPackageManager().getPackageInfo(this.ac.getPackageName(), 0);
                V = packageInfo.versionName;
                W = packageInfo.versionCode;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences sharedPreferences = this.ac.getSharedPreferences("applog_stats", 0);
            int i10 = sharedPreferences.getInt("app_log_last_config_version", 0);
            this.aB = i10;
            if (i10 == W) {
                long j6 = sharedPreferences.getLong("app_log_last_config_time", 0L);
                if (j6 <= jCurrentTimeMillis) {
                    jCurrentTimeMillis = j6;
                }
                this.ay = jCurrentTimeMillis;
            }
            try {
                String string = sharedPreferences.getString("allow_push_list", null);
                if (string != null) {
                    synchronized (S) {
                        try {
                            L(this.al, new JSONArray(string));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Exception e6) {
                Logger.w("AppLog", "load allow_push_list exception: " + e6);
            }
            this.am = sharedPreferences.getBoolean("allow_old_image_sample", false);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: com.ss.android.tea.common.applog.b$b, reason: collision with other inner class name */
    static /* synthetic */ class C0373b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3108a;

        static {
            int[] iArr = new int[c.values().length];
            f3108a = iArr;
            try {
                iArr[c.PAGE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3108a[c.PAGE_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3108a[c.EVENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3108a[c.CONFIG_UPDATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3108a[c.SAVE_DNS_REPORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3108a[c.SAVE_MISC_LOG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3108a[c.ADD_CUSTOM_HEADER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3108a[c.ADD_UNIQUE_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3108a[c.AB_CONFIG_UPDATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3108a[c.DEVICE_ID_UPDATE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3108a[c.UPDATE_AB_VERSION_SERVER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3108a[c.UPDATE_GOOGLE_AID.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f3108a[c.UPDATE_APP_LANGUAGE_REGION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    enum c {
        PAGE_START(0),
        PAGE_END(1),
        EVENT(2),
        IMAGE_SAMPLE(3),
        CONFIG_UPDATE(4),
        API_SAMPLE(5),
        UA_UPDATE(6),
        SAVE_ANR_TAG(7),
        SAVE_DNS_REPORT(8),
        SAVE_MISC_LOG(9),
        ADD_CUSTOM_HEADER(10),
        ADD_UNIQUE_ID(11),
        AB_CONFIG_UPDATE(12),
        DEVICE_ID_UPDATE(13),
        UPDATE_AB_VERSION_SERVER(14),
        UPDATE_GOOGLE_AID(15),
        UPDATE_APP_LANGUAGE_REGION(16);

        final int nativeInt;

        c(int i10) {
            this.nativeInt = i10;
        }
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f3109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f3110b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3111c;
        public String d;

        public f(c cVar) {
            this.f3109a = cVar;
        }
    }

    static void A(Context context, String str, String str2, String str3, long j6, long j10, boolean z6, JSONObject jSONObject) {
        b bVar = T;
        if (bVar == null) {
            Logger.w("AppLog", "null context when onEvent");
        } else {
            if (com.bytedance.tea.common.utility.d.a(str) || com.bytedance.tea.common.utility.d.a(str2)) {
                return;
            }
            bVar.I(str, str2, str3, j6, j10, z6, jSONObject);
        }
    }

    static String A0() {
        return s.mAppActiveUrl;
    }

    static boolean D0() {
        b bVar = T;
        return (bVar == null || Looper.myLooper() != Looper.getMainLooper() || bVar.p == null) ? false : true;
    }

    public static void H0(Context context) {
        if (context instanceof Activity) {
            Y(context, context.getClass().getName(), context.hashCode());
        }
    }

    public static void I0() {
        synchronized (S) {
            try {
                if (f3092b) {
                    return;
                }
                f3092b = true;
                b bVar = T;
                if (bVar != null) {
                    bVar.O0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void J0(Context context) {
        if (context instanceof Activity) {
            y(context, context.getClass().getName(), context.hashCode());
        }
        if (L) {
            return;
        }
        e0(context.getApplicationContext());
    }

    public static String L0(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return null;
        }
        return M0(jSONObject.toString());
    }

    private void S(boolean z6, boolean z10, boolean z11) {
        JSONObject jSONObject;
        JSONObject jSONObjectB;
        if (this.aA || (jSONObject = this.ad) == null) {
            return;
        }
        String strL0 = null;
        if (y.e(jSONObject.optString("device_id", null)) || com.bytedance.tea.common.utility.d.a(this.ad.optString("install_id", null))) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z12 = this.aB == W;
        long j6 = (aC || this.ab >= 0 || !z12) ? 21600000L : 43200000L;
        long j10 = z12 ? LiveLayerService.REFRESH_INTERVAL : 60000L;
        boolean zP = p();
        if (!zP) {
            if (z10) {
                if (this.az > this.ay && jCurrentTimeMillis - this.az < j10) {
                    return;
                }
            } else if (jCurrentTimeMillis - this.ay < j6 || jCurrentTimeMillis - this.az < j10) {
                return;
            }
        }
        try {
            if (NetworkUtils.b(this.ac)) {
                this.az = jCurrentTimeMillis;
                this.aA = true;
                JSONObject jSONObject2 = new JSONObject(this.ad, f3091a);
                String strH = com.ss.android.tea.common.deviceregister.e.h(this.ac);
                if (!com.bytedance.tea.common.utility.d.a(strH)) {
                    jSONObject2.put("user_agent", strH);
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("magic_tag", "ss_app_log");
                jSONObject3.put("header", jSONObject2);
                jSONObject3.put("_gen_time", System.currentTimeMillis());
                if (jCurrentTimeMillis - this.ah > 43200000 || zP) {
                    h();
                    strL0 = L0(this.ag);
                }
                boolean z13 = strL0 != null;
                if (strL0 != null) {
                    jSONObject3.put("fingerprint", strL0);
                }
                try {
                    if (l.f3137a) {
                        l.r(this.ac).h(false);
                        if (l.r(this.ac).m()) {
                            if (l.r(this.ac).j()) {
                                jSONObjectB = l.r(this.ac).f();
                            } else {
                                jSONObjectB = l.r(this.ac).b();
                                l.r(this.ac).h(true);
                            }
                            if (jSONObjectB != null) {
                                jSONObject3.put("app_install_info", jSONObjectB);
                            }
                        } else {
                            l.r(this.ac).n();
                        }
                    }
                } catch (Exception unused) {
                }
                String string = jSONObject3.toString();
                if (z6) {
                    new a(string, z13, z11).start();
                } else {
                    T(string, z13, z11);
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static void S0(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        b bVar = T;
        if (bVar != null) {
            bVar.M(map);
        } else {
            Map<String, Object> map2 = aM;
            synchronized (map2) {
                map2.putAll(map);
            }
        }
        com.ss.android.tea.common.deviceregister.d.q(map);
    }

    private boolean U(JSONObject jSONObject, Context context) {
        try {
            JSONArray jSONArray = new JSONArray();
            if (f3095v) {
                jSONArray.put(1);
            }
            if (f3096w) {
                jSONArray.put(2);
            }
            if (f3097x) {
                jSONArray.put(6);
            }
            if (f3098y) {
                jSONArray.put(7);
            }
            if (f3099z) {
                jSONArray.put(8);
            }
            if (A) {
                jSONArray.put(9);
            }
            jSONObject.put("push_sdk", jSONArray);
        } catch (Exception unused) {
        }
        try {
            if (!com.bytedance.tea.common.utility.d.a(y.d())) {
                jSONObject.put("aliyun_uuid", y.d());
            }
        } catch (Exception unused2) {
        }
        return com.ss.android.tea.common.deviceregister.e.g(context, jSONObject);
    }

    private static boolean V(JSONObject jSONObject, String str, boolean z6) {
        if (jSONObject == null || jSONObject.isNull(str)) {
            return z6;
        }
        int iOptInt = jSONObject.optInt(str, -1);
        if (iOptInt >= 1) {
            return true;
        }
        if (iOptInt == 0) {
            return false;
        }
        return jSONObject.optBoolean(str, z6);
    }

    static void b0(JSONObject jSONObject) {
        b bVar = T;
        if (bVar != null) {
            try {
                jSONObject.put("tea_event_index", bVar.aO.getAndIncrement());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            T.m();
        }
    }

    private static void e0(Context context) {
        if (!M) {
            synchronized (b.class) {
                try {
                    if (!M) {
                        N = true;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        N = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - O < 900000 || !NetworkUtils.b(context)) {
            return;
        }
        O = jCurrentTimeMillis;
        new o6.a.C0471a(context, A0()).start();
    }

    private void g0(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("app_language", null);
        String strOptString2 = jSONObject.optString("app_region", null);
        if (q0(strOptString) || w0(strOptString2)) {
            com.ss.android.tea.common.deviceregister.a.p();
            Logger.d("AppLog", "updateDeviceInfo call device_register");
        }
    }

    private JSONObject k() {
        JSONObject jSONObjectOptJSONObject;
        if (this.af == null) {
            return null;
        }
        synchronized (K) {
            jSONObjectOptJSONObject = this.af.optJSONObject("ab_config");
        }
        return jSONObjectOptJSONObject;
    }

    private void k0(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        boolean zE = y.e(this.ad.optString("device_id", null));
        String strOptString = jSONObject.optString("device_id", null);
        String strOptString2 = jSONObject.optString("install_id", null);
        String strOptString3 = jSONObject.optString("ssid", null);
        if (com.bytedance.tea.common.utility.d.a(aL) && !com.bytedance.tea.common.utility.d.a(strOptString)) {
            try {
                this.ad.put("user_unique_id", strOptString);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (!com.bytedance.tea.common.utility.d.a(strOptString)) {
            try {
                this.ad.put("device_id", strOptString);
            } catch (JSONException e6) {
                e6.printStackTrace();
            }
        }
        if (!com.bytedance.tea.common.utility.d.a(strOptString2)) {
            try {
                this.ad.put("install_id", strOptString2);
            } catch (JSONException e7) {
                e7.printStackTrace();
            }
        }
        if (!com.bytedance.tea.common.utility.d.a(strOptString3)) {
            try {
                this.ad.put("ssid", strOptString3);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        if (this.n != null) {
            try {
                this.n.l(new JSONObject(this.ad, f3091a));
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        S(true, true, zE);
    }

    private void l() {
        this.aO.set(this.ac.getSharedPreferences(j.a(), 0).getLong("key_global_event_index_matrix", 0L));
        n();
    }

    private void n() {
        long j6 = this.aO.get() + 1000;
        SharedPreferences.Editor editorEdit = this.ac.getSharedPreferences(j.a(), 0).edit();
        editorEdit.putLong("key_global_event_index_matrix", j6);
        com.bytedance.tea.common.utility.c.a.a(editorEdit);
        this.aP = j6;
    }

    static String n0() {
        return s.mApplogURL;
    }

    private void o() {
        d dVar;
        WeakReference<d> weakReference = aX;
        if (weakReference == null || (dVar = weakReference.get()) == null) {
            return;
        }
        try {
            dVar.a();
        } catch (Exception unused) {
        }
    }

    private void o0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str) || this.n == null) {
            return;
        }
        try {
            if (str.equals(this.ad.optString("google_aid", null))) {
                return;
            }
            this.ad.put("google_aid", str);
            if (this.n != null) {
                this.n.l(new JSONObject(this.ad, f3091a));
            }
            this.ac.getSharedPreferences(j.a(), 0).edit().putString("google_aid", str).commit();
        } catch (Throwable unused) {
        }
    }

    private boolean p() {
        c0 c0Var;
        HashSet<Integer> hashSet = this.as;
        return hashSet != null && hashSet.contains(6) && (c0Var = this.aF) != null && c0Var.a();
    }

    static String p0() {
        return s.mApplogSettingsUrl;
    }

    private JSONObject q() {
        HashSet<Integer> hashSet = this.as;
        if (hashSet == null || hashSet.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            String strB = a0.b(this.ac);
            if (!TextUtils.isEmpty(strB)) {
                jSONObject.put("account_facebook", strB);
            }
        } catch (Exception unused) {
        }
        try {
            String strD = a0.d(this.ac);
            if (!TextUtils.isEmpty(strD)) {
                jSONObject.put("account_twitter", strD);
            }
        } catch (Exception unused2) {
        }
        try {
            String strE = a0.e(this.ac);
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put("account_weibo", strE);
            }
        } catch (Exception unused3) {
        }
        try {
            String strF = a0.f(this.ac);
            if (!TextUtils.isEmpty(strF)) {
                jSONObject.put("account_weixin", strF);
            }
        } catch (Exception unused4) {
        }
        try {
            String strC = a0.c(this.ac);
            if (!TextUtils.isEmpty(strC)) {
                jSONObject.put("account_renren", strC);
            }
        } catch (Exception unused5) {
        }
        return jSONObject;
    }

    private boolean q0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return false;
        }
        try {
            if (!str.equals(this.ad.optString("app_language", null))) {
                this.ad.put("app_language", str);
                if (this.n != null) {
                    this.n.l(new JSONObject(this.ad, f3091a));
                }
                this.ac.getSharedPreferences(j.a(), 0).edit().putString("app_language", str).commit();
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r() {
        try {
            com.ss.android.tea.common.deviceregister.a.d(this);
            com.ss.android.tea.common.deviceregister.a.b(this.f3103t);
            boolean zU = U(this.ad, this.ac);
            if (com.bytedance.tea.common.utility.d.a(aL)) {
                aL = com.ss.android.tea.common.deviceregister.d.c();
            }
            this.k = zU;
            a1();
            x xVarP = m.t(this.ac).p(0L);
            this.ao = xVarP;
            H(xVarP);
            o();
            if (this.ao != null) {
                Logger.i("AppLog", "start with last session " + this.ao.f3177b);
                t tVar = new t();
                tVar.f3164a = this.ao.f3176a;
                G(tVar);
            }
            this.n = new w(this.ac, new JSONObject(this.ad, f3091a), this.m, this.an, null, this.ao, this.aJ, this.aK);
            this.n.d(this.aq);
            this.n.c(this.ar);
            this.n.start();
            return true;
        } catch (Exception e2) {
            Logger.w("AppLog", "failed to start LogReaper: " + e2);
            return false;
        }
    }

    public static void s0(Map<String, String> map) {
        b bVar;
        synchronized (S) {
            try {
                bVar = !f3092b ? T : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bVar == null) {
            return;
        }
        com.ss.android.tea.common.deviceregister.a.e(map);
        map.put("user_id", String.valueOf(f3093c.get()));
    }

    public static String t0() {
        if (T != null) {
            return com.ss.android.tea.common.deviceregister.a.i();
        }
        return null;
    }

    static <T> T u(String str, T t5, Class<T> cls) {
        Object objL0;
        try {
            b bVar = T;
            return (bVar == null || cls == null || (objL0 = bVar.l0(str)) == null) ? t5 : cls.cast(objL0);
        } catch (Throwable th) {
            th.printStackTrace();
            return t5;
        }
    }

    public static String u0() {
        if (T != null) {
            return com.ss.android.tea.common.deviceregister.a.j();
        }
        return null;
    }

    static String v(long j6) {
        return R.format(new Date(j6));
    }

    static String v0() {
        return s.mAbConfigUrl;
    }

    private boolean w0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return false;
        }
        try {
            if (!str.equals(this.ad.optString("app_region", null))) {
                this.ad.put("app_region", str);
                if (this.n != null) {
                    this.n.l(new JSONObject(this.ad, f3091a));
                }
                this.ac.getSharedPreferences(j.a(), 0).edit().putString("app_region", str).commit();
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    static String x0() {
        return qa.y.HTTP + P + "/service/2/app_log_exception/";
    }

    public static void z0(Context context, boolean z6, n6.a aVar, com.ss.android.tea.common.applog.h hVar) {
        if (context == null || aVar == null) {
            throw new RuntimeException("applog init context is not null and AppContext is not null");
        }
        aG = true;
        if (context instanceof Activity) {
            aC = true;
        }
        com.ss.android.tea.common.deviceregister.a.f(aC);
        synchronized (S) {
            try {
                if (T == null) {
                    T = new b(context.getApplicationContext(), aVar);
                    if (Logger.debug()) {
                        Logger.d("Process", " AppLog = " + T.toString() + " pid = " + String.valueOf(Process.myPid()));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        L = !z6;
        if (hVar == null) {
            s = com.ss.android.tea.common.applog.h.CHINA;
        } else {
            s = hVar;
        }
        com.ss.android.tea.common.deviceregister.a.g(s.mDeviceRegisterUrl);
    }

    void B(f fVar) {
        if (fVar == null) {
            return;
        }
        synchronized (this.l) {
            try {
                if (f3092b) {
                    return;
                }
                if (this.l.size() >= 2000) {
                    this.l.poll();
                }
                this.l.add(fVar);
                this.l.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void C(h hVar) {
        if (!this.k || hVar == null) {
            return;
        }
        if (this.p != null) {
            Logger.w("AppLog", "onPause not call on " + this.p.f3115b);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.ab = jCurrentTimeMillis;
        this.p = hVar;
        if (Logger.debug()) {
            Logger.v("AppLog", "onResume " + hVar.f3115b);
        }
        f fVar = new f(c.PAGE_START);
        fVar.f3111c = jCurrentTimeMillis;
        B(fVar);
        com.ss.android.tea.common.applog.i iVar = this.Y;
        if (iVar != null) {
            iVar.b();
        }
        b0 b0Var = this.Z;
        if (b0Var != null) {
            b0Var.a();
        }
    }

    void C0() {
        synchronized (this.ae) {
            this.ac.getSharedPreferences("header_custom", 0).edit().putString("header_custom_info", this.ae.toString()).apply();
        }
    }

    void E(q qVar) {
        x(qVar.h, true);
        x xVar = this.ao;
        if (xVar == null) {
            return;
        }
        qVar.f3156i = xVar.f3176a;
        m();
        long jB = m.t(this.ac).b(qVar);
        if (jB > 0) {
            qVar.f3153a = jB;
            N0();
        }
    }

    void F(s sVar, long j6) {
        x xVar = this.ao;
        if (xVar == null) {
            Logger.w("AppLog", "no session when onPause: " + sVar.f3161a);
            return;
        }
        if (xVar.f3179i) {
            Logger.w("AppLog", "non-page session when onPause: " + sVar.f3161a);
            return;
        }
        xVar.k = false;
        xVar.h = j6;
        sVar.f3163c = xVar.f3176a;
        m.t(this.ac).c(sVar, j6);
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.aU <= 0 || !n6.b.f3284a) {
                return;
            }
            long j10 = jCurrentTimeMillis - this.aU;
            Bundle bundle = new Bundle();
            bundle.putInt("session_no", this.aT);
            int i10 = this.aV + 1;
            this.aV = i10;
            bundle.putInt("send_times", i10);
            bundle.putLong("current_duration", j10 / 1000);
            bundle.putString("session_start_time", v(this.ao.f3178c));
            this.aU = 0L;
            this.aW = false;
            s6.a.b("play_session", bundle);
        } catch (Exception unused) {
        }
    }

    void G(u uVar) {
        if (uVar == null) {
            return;
        }
        this.ax = System.currentTimeMillis();
        synchronized (this.m) {
            try {
                if (this.m.size() >= 2000) {
                    this.m.poll();
                }
                this.m.add(uVar);
                this.m.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void H(x xVar) {
        JSONObject jSONObject;
        String strOptString;
        try {
            SharedPreferences sharedPreferences = this.ac.getSharedPreferences("applog_stats", 0);
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j6 = sharedPreferences.getLong("send_fingerprint_time", 0L);
            this.ah = j6;
            if (j6 >= jCurrentTimeMillis) {
                this.ah = jCurrentTimeMillis - DateUtils.ONE_DAY;
            }
            long j10 = sharedPreferences.getLong("session_interval", 30000L);
            if (j10 >= 15000 && j10 <= 300000) {
                this.ap = j10;
            }
            this.aq = sharedPreferences.getLong("batch_event_interval", 0L);
            this.B = sharedPreferences.getLong("update_ab_config_interval", 0L);
            this.ar = sharedPreferences.getInt("send_launch_timely", 1);
            try {
                String string = sharedPreferences.getString("fingerprint_codes", null);
                if (string != null) {
                    this.as = w(new JSONArray(string));
                }
            } catch (Exception e2) {
                Logger.w("AppLog", "load fingerprint_codes exception: " + e2);
            }
            this.at = sharedPreferences.getInt("http_monitor_port", 8192);
            if (xVar == null) {
                return;
            }
            String string2 = sharedPreferences.getString("stats_value", null);
            if (!com.bytedance.tea.common.utility.d.a(string2) && (strOptString = (jSONObject = new JSONObject(string2)).optString("session_id", null)) != null && strOptString.equals(xVar.f3177b)) {
                int iOptInt = jSONObject.optInt("cnt_success", 0);
                int iOptInt2 = jSONObject.optInt("cnt_failure", 0);
                if (iOptInt > 0) {
                    this.av.addAndGet(iOptInt);
                }
                if (iOptInt2 > 0) {
                    this.aw.addAndGet(iOptInt2);
                }
                if (jSONObject.isNull("samples")) {
                    return;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("samples");
                int length = jSONArray.length();
                if (length > 5) {
                    length = 5;
                }
                for (int i10 = 0; i10 < length; i10++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                    String strOptString2 = jSONObject2.optString(ImagesContract.URL, null);
                    jSONObject2.getInt("networktype");
                    jSONObject2.getLong("time");
                    jSONObject2.getLong("timestamp");
                    com.bytedance.tea.common.utility.d.a(strOptString2);
                }
            }
        } catch (Exception unused) {
        }
    }

    void I(String str, String str2, String str3, long j6, long j10, boolean z6, JSONObject jSONObject) {
        String str4;
        if (this.k) {
            try {
                if (K0()) {
                    if ("event_v3".equalsIgnoreCase(str)) {
                        ConcurrentHashMap<String, String> concurrentHashMap = this.aK;
                        if (concurrentHashMap != null && concurrentHashMap.size() > 0 && !com.bytedance.tea.common.utility.d.a(str2) && this.aK.containsKey(str2)) {
                            Logger.d("AppLog", "hit black event v3");
                            return;
                        }
                    } else {
                        ConcurrentHashMap<String, String> concurrentHashMap2 = this.aJ;
                        if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                            if (com.bytedance.tea.common.utility.d.a(str3)) {
                                str4 = str2;
                            } else {
                                str4 = str2 + str3;
                            }
                            if (this.aJ.containsKey(str4)) {
                                Logger.d("AppLog", "hit black event v1");
                                return;
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            q qVar = new q();
            qVar.f3154b = str;
            qVar.f3155c = str2;
            qVar.d = str3;
            qVar.e = j6;
            qVar.f = j10;
            qVar.l = this.aO.getAndIncrement();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f3102j == null || jCurrentTimeMillis - this.X > 3000) {
                this.f3102j = NetworkUtils.d(this.ac);
            }
            NetworkUtils.NetworkType networkType = this.f3102j;
            if (networkType != null) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                try {
                    jSONObject.put("nt", networkType.getValue());
                } catch (Exception unused2) {
                }
            }
            if (jSONObject != null) {
                qVar.f3157j = jSONObject.toString();
            }
            qVar.g = f3093c.get();
            qVar.h = System.currentTimeMillis();
            qVar.k = z6;
            if (Logger.debug()) {
                StringBuilder sb = new StringBuilder();
                sb.append("onEvent ");
                sb.append(str);
                sb.append(" ");
                sb.append(str2);
                sb.append(" ");
                sb.append(str3);
                if (j6 != 0 || j10 != 0 || jSONObject != null) {
                    sb.append(" ");
                    sb.append(j6);
                }
                if (j10 != 0 || jSONObject != null) {
                    sb.append(" ");
                    sb.append(j10);
                }
                if (jSONObject != null) {
                    sb.append(" ");
                    sb.append(jSONObject);
                }
                Logger.v("AppLog", sb.toString());
            }
            try {
                if (t6.a.c().b()) {
                    JSONObject jSONObject2 = new JSONObject();
                    if (jSONObject != null) {
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObject2.put(next, jSONObject.get(next));
                        }
                    }
                    jSONObject2.put("category", str);
                    jSONObject2.put("tag", str2);
                    if (!com.bytedance.tea.common.utility.d.a(str3)) {
                        jSONObject2.put("label", str3);
                    }
                    if (j6 != 0) {
                        jSONObject2.put("value", j6);
                    }
                    if (j10 != 0) {
                        jSONObject2.put("ext_value", j10);
                    }
                    t6.a.c().a(jSONObject2);
                }
            } catch (Exception unused3) {
            }
            f fVar = new f(c.EVENT);
            fVar.f3110b = qVar;
            B(fVar);
        }
    }

    void J(String str, JSONObject jSONObject) {
        try {
            x xVar = this.ao;
            long j6 = xVar != null ? xVar.f3176a : 0L;
            if (!this.k || j6 <= 0 || com.bytedance.tea.common.utility.d.a(str) || jSONObject == null) {
                return;
            }
            m.t(this.ac).a(j6, str, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    void K(HashMap<String, Object> map) {
        if (map != null) {
            try {
                if (map.size() <= 0) {
                    return;
                }
                for (String str : map.keySet()) {
                    if (!com.bytedance.tea.common.utility.d.a(str) && map.get(str) != null) {
                        this.ae.put(str, map.get(str));
                    }
                }
                aN = this.ae.optLong("total_currency_amount", 0L);
                this.ad.put("custom", this.ae);
                JSONObject jSONObject = new JSONObject(this.ad, f3091a);
                if (this.n != null) {
                    this.n.l(jSONObject);
                }
                C0();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    void L(HashSet<Integer> hashSet, JSONArray jSONArray) throws JSONException {
        if (hashSet == null || jSONArray == null) {
            return;
        }
        hashSet.clear();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = jSONArray.getInt(i10);
            if (i11 > 0) {
                hashSet.add(Integer.valueOf(i11));
            }
        }
    }

    void M(Map<String, Object> map) {
        try {
            HashMap map2 = new HashMap();
            map2.putAll(map);
            f fVar = new f(c.ADD_CUSTOM_HEADER);
            fVar.f3110b = map2;
            B(fVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    void N(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        String str;
        if (jSONObject != null) {
            try {
                if (jSONObject.length() != 0 && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null && jSONObjectOptJSONObject.length() > 0) {
                    SharedPreferences.Editor editorEdit = this.ac.getSharedPreferences("header_custom", 0).edit();
                    String strOptString = jSONObjectOptJSONObject.optString("versions", null);
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("configs");
                    String strOptString2 = jSONObjectOptJSONObject.optString("delay_versions", null);
                    JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("delay_configs");
                    if (com.bytedance.tea.common.utility.d.a(strOptString)) {
                        editorEdit.remove("ab_version");
                    } else {
                        editorEdit.putString("ab_version", strOptString);
                    }
                    if (com.bytedance.tea.common.utility.d.a(strOptString2)) {
                        editorEdit.remove("ab_delay_version");
                    } else {
                        editorEdit.putString("ab_delay_version", strOptString2);
                    }
                    if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() <= 0) {
                        editorEdit.remove("ab_configure");
                    } else {
                        editorEdit.putString("ab_configure", jSONObjectOptJSONObject2.toString());
                        O(jSONObjectOptJSONObject2, this.I);
                        synchronized (K) {
                            this.af.put("ab_config", this.I);
                        }
                    }
                    if (jSONObjectOptJSONObject3 == null || jSONObjectOptJSONObject3.length() <= 0) {
                        editorEdit.remove("ab_delay_configure");
                    } else {
                        editorEdit.putString("ab_delay_configure", jSONObjectOptJSONObject3.toString());
                    }
                    editorEdit.apply();
                    if (com.bytedance.tea.common.utility.d.a(strOptString) || strOptString.equalsIgnoreCase(this.F)) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    if (com.bytedance.tea.common.utility.d.a(strOptString)) {
                        strOptString = "";
                    }
                    sb.append(strOptString);
                    if (com.bytedance.tea.common.utility.d.a(this.G)) {
                        str = "";
                    } else {
                        str = "," + this.G;
                    }
                    sb.append(str);
                    this.ad.put("ab_version", sb.toString());
                    if (this.n != null) {
                        try {
                            this.n.l(new JSONObject(this.ad, f3091a));
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                this.J = false;
                th.printStackTrace();
            }
        }
    }

    void O(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                jSONObject2.put(next, jSONObject.opt(next));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    void O0() {
        synchronized (this.l) {
            this.l.clear();
            this.l.notify();
        }
        this.an.set(true);
        synchronized (this.m) {
            this.m.clear();
            this.m.notifyAll();
        }
        com.ss.android.tea.common.deviceregister.a.m();
        m.s();
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0097  */
    void P(JSONObject jSONObject, boolean z6, boolean z10) {
        String string;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        if (jSONObject == null) {
            return;
        }
        this.ay = System.currentTimeMillis();
        this.aB = W;
        try {
            long jOptLong = jSONObject.optLong("server_time");
            if (jOptLong > 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("server_time", jOptLong);
                jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                this.au = jSONObject2;
                if (this.n != null) {
                    this.n.h(this.au);
                }
            }
        } catch (Exception unused) {
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("config");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONObject jSONObject3 = jSONObjectOptJSONObject;
        String string2 = null;
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("allow_push_list");
            if (jSONArrayOptJSONArray != null) {
                synchronized (S) {
                    L(this.al, jSONArrayOptJSONArray);
                }
                string = jSONArrayOptJSONArray.toString();
            } else {
                string = null;
            }
        } catch (Exception unused2) {
            string = null;
        }
        boolean zV = V(jSONObject3, "allow_old_image_sample", false);
        if (zV != this.am) {
            this.am = zV;
            z11 = true;
        } else {
            z11 = false;
        }
        long jOptLong2 = jSONObject3.optLong("session_interval", 0L);
        if (jOptLong2 < 15 || jOptLong2 > 300) {
            z12 = false;
        } else {
            long j6 = jOptLong2 * 1000;
            if (j6 != this.ap) {
                this.ap = j6;
                z12 = true;
            } else {
                z12 = false;
            }
        }
        long jOptLong3 = jSONObject3.optLong("batch_event_interval", 0L) * 1000;
        if (jOptLong3 != this.aq) {
            this.aq = jOptLong3;
            if (this.n != null) {
                this.n.d(jOptLong3);
            }
            z12 = true;
        }
        int iOptInt = jSONObject3.optInt("send_launch_timely");
        if (iOptInt != this.ar) {
            this.ar = iOptInt;
            if (this.n != null) {
                this.n.c(this.ar);
            }
            z12 = true;
        }
        long jOptLong4 = jSONObject3.optLong("abtest_fetch_interval", 0L) * 1000;
        try {
            JSONArray jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("fingerprint_codes");
            if (jSONArrayOptJSONArray2 != null) {
                this.as = w(jSONArrayOptJSONArray2);
                string2 = jSONArrayOptJSONArray2.toString();
            }
        } catch (Exception unused3) {
        }
        if (z6) {
            this.ah = System.currentTimeMillis();
            z13 = true;
        } else {
            z13 = false;
        }
        int iOptInt2 = jSONObject3.optInt("http_monitor_port");
        if (iOptInt2 <= 0 || iOptInt2 == this.at) {
            z14 = false;
        } else {
            this.at = iOptInt2;
            z14 = true;
        }
        SharedPreferences.Editor editorEdit = this.ac.getSharedPreferences("applog_stats", 0).edit();
        if (z12) {
            editorEdit.putLong("session_interval", this.ap);
            editorEdit.putLong("batch_event_interval", this.aq);
            editorEdit.putInt("send_launch_timely", this.ar);
        }
        if (string2 != null) {
            editorEdit.putString("fingerprint_codes", string2);
        }
        if (string != null) {
            editorEdit.putString("allow_push_list", string);
        }
        if (z11) {
            editorEdit.putBoolean("allow_old_image_sample", this.am);
        }
        if (z13) {
            editorEdit.putLong("send_fingerprint_time", this.ah);
        }
        if (z14) {
            editorEdit.putInt("http_monitor_port", this.at);
        }
        if (jOptLong4 != this.B) {
            this.B = jOptLong4;
            editorEdit.putLong("update_ab_config_interval", jOptLong4);
        }
        editorEdit.putLong("app_log_last_config_time", this.ay);
        editorEdit.putInt("app_log_last_config_version", this.aB);
        editorEdit.commit();
        o();
        if (l.r(this.ac).l() && !l.r(this.ac).j()) {
            l.r(this.ac).e(true);
        }
        if (!z10 || this.ak || this.ah > 0) {
            return;
        }
        this.ak = true;
        if (this.as.isEmpty()) {
            return;
        }
        S(true, true, false);
    }

    void P0() {
        x xVar = this.ao;
        if (xVar == null || xVar.f3179i) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        x xVar2 = this.ao;
        if (xVar2.k || jCurrentTimeMillis - xVar2.h < this.ap) {
            return;
        }
        U0();
        this.ao = null;
        v vVar = new v();
        vVar.f3165a = xVar2;
        G(vVar);
        b0 b0Var = this.Z;
        if (b0Var != null) {
            b0Var.c();
        }
    }

    void Q(boolean z6) {
        SharedPreferences sharedPreferences = this.ac.getSharedPreferences("last_sp_session", 0);
        if (z6) {
            return;
        }
        String strV0 = V0();
        if (com.bytedance.tea.common.utility.d.a(this.aS)) {
            this.aS = sharedPreferences.getString("session_last_day", "");
        }
        if (com.bytedance.tea.common.utility.d.a(this.aS) || !strV0.equals(this.aS)) {
            this.aS = strV0;
            this.aT = 1;
            sharedPreferences.edit().putString("session_last_day", this.aS).putInt("session_order", this.aT).commit();
        } else {
            if (this.aT == 0) {
                this.aT = sharedPreferences.getInt("session_order", 0);
            }
            this.aT++;
            sharedPreferences.edit().putInt("session_order", this.aT).commit();
        }
        this.aV = 0;
    }

    boolean T(String str, boolean z6, boolean z10) {
        aR.set(Boolean.TRUE);
        boolean zD0 = d0(str, z6, z10);
        Object obj = aQ;
        synchronized (obj) {
            this.aA = false;
            try {
                obj.notifyAll();
            } catch (Exception unused) {
            }
        }
        aR.remove();
        return zD0;
    }

    void W(long j6) {
        SharedPreferences.Editor editorEdit = this.ac.getSharedPreferences("applog_stats", 0).edit();
        editorEdit.putLong("dns_report_time", j6);
        editorEdit.commit();
    }

    void W0() {
        try {
            if (n6.b.f3284a && this.aW) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.aU;
                if (jCurrentTimeMillis >= 60000) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("session_no", this.aT);
                    int i10 = this.aV + 1;
                    this.aV = i10;
                    bundle.putInt("send_times", i10);
                    bundle.putLong("current_duration", jCurrentTimeMillis / 1000);
                    bundle.putString("session_start_time", v(this.ao.f3178c));
                    this.aU = System.currentTimeMillis();
                    s6.a.b("play_session", bundle);
                }
            }
        } catch (Throwable unused) {
        }
    }

    void X0() {
        x xVar = this.ao;
        if (xVar == null || xVar.f3179i) {
            return;
        }
        this.aU = System.currentTimeMillis();
        this.aW = true;
    }

    void Z(f fVar) {
        boolean zBooleanValue;
        if (this.k && !f3092b) {
            switch (C0373b.f3108a[fVar.f3109a.ordinal()]) {
                case 1:
                    x(fVar.f3111c, false);
                    X0();
                    N0();
                    break;
                case 2:
                    Object obj = fVar.f3110b;
                    if (obj instanceof s) {
                        F((s) obj, fVar.f3111c);
                    }
                    N0();
                    break;
                case 3:
                    Object obj2 = fVar.f3110b;
                    if (obj2 instanceof q) {
                        E((q) obj2);
                    }
                    break;
                case 4:
                    if (fVar.f3110b instanceof JSONObject) {
                        try {
                            zBooleanValue = Boolean.valueOf(fVar.d).booleanValue();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            zBooleanValue = false;
                        }
                        P((JSONObject) fVar.f3110b, fVar.f3111c == 1, zBooleanValue);
                    }
                    break;
                case 5:
                    long j6 = fVar.f3111c;
                    if (j6 > 0) {
                        W(j6);
                    }
                    break;
                case 6:
                    if (!com.bytedance.tea.common.utility.d.a(fVar.d)) {
                        Object obj3 = fVar.f3110b;
                        if (obj3 instanceof JSONObject) {
                            J(fVar.d, (JSONObject) obj3);
                        }
                    }
                    break;
                case 7:
                    Object obj4 = fVar.f3110b;
                    if (obj4 instanceof HashMap) {
                        K((HashMap) obj4);
                    }
                    break;
                case 8:
                    Object obj5 = fVar.f3110b;
                    if (obj5 instanceof String) {
                        j0((String) obj5);
                    }
                    break;
                case 9:
                    Object obj6 = fVar.f3110b;
                    if (obj6 instanceof JSONObject) {
                        N((JSONObject) obj6);
                    }
                    break;
                case 10:
                    Object obj7 = fVar.f3110b;
                    if (obj7 instanceof JSONObject) {
                        k0((JSONObject) obj7);
                    }
                    break;
                case 11:
                    Object obj8 = fVar.f3110b;
                    if (obj8 instanceof String) {
                        y0((String) obj8);
                    }
                    break;
                case 12:
                    Object obj9 = fVar.f3110b;
                    if (obj9 instanceof String) {
                        o0((String) obj9);
                    }
                    break;
                case 13:
                    Object obj10 = fVar.f3110b;
                    if (obj10 instanceof JSONObject) {
                        g0((JSONObject) obj10);
                    }
                    break;
            }
        }
    }

    String Z0() {
        return r6.a.b(this.ac);
    }

    @Override // com.ss.android.tea.common.applog.b0.a
    public void a(b0.b bVar) {
        if (bVar == null) {
            return;
        }
        Logger.w("AppLog", "onTrafficWarning: " + bVar);
        if (!D0()) {
            int i10 = this.f3100aa;
            if (i10 == 1) {
                I0();
                Process.killProcess(Process.myPid());
            } else if (i10 == 2) {
                z(null, "traffic_warn", bVar.toString());
            }
        }
        b0 b0Var = this.Z;
        if (b0Var != null) {
            b0Var.a();
        }
    }

    void a0(h hVar) {
        if (!this.k || hVar == null) {
            return;
        }
        String str = hVar.f3115b;
        long jCurrentTimeMillis = System.currentTimeMillis();
        h hVar2 = this.p;
        if (hVar2 == null || hVar2.f3114a != hVar.f3114a) {
            Logger.w("AppLog", "unmatched onPause: " + str + " " + (hVar2 != null ? hVar2.f3115b : "(null)"));
            this.ab = jCurrentTimeMillis - 1010;
        }
        this.p = null;
        int i10 = (int) ((jCurrentTimeMillis - this.ab) / 1000);
        if (i10 <= 0) {
            i10 = 1;
        }
        this.ab = jCurrentTimeMillis;
        if (Logger.debug()) {
            Logger.v("AppLog", "onPause " + i10 + " " + str);
        }
        s sVar = new s();
        sVar.f3161a = str;
        sVar.f3162b = i10;
        f fVar = new f(c.PAGE_END);
        fVar.f3110b = sVar;
        fVar.f3111c = jCurrentTimeMillis;
        B(fVar);
        com.ss.android.tea.common.applog.i iVar = this.Y;
        if (iVar != null) {
            iVar.a();
        }
    }

    void a1() {
        String str;
        try {
            JSONObject jSONObjectOptJSONObject = this.ad.optJSONObject("custom");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    this.ae.put(next, jSONObjectOptJSONObject.opt(next));
                }
            }
            HashMap map = new HashMap();
            Map<String, Object> map2 = aM;
            synchronized (map2) {
                map.putAll(map2);
            }
            if (!map.isEmpty()) {
                for (String str2 : map.keySet()) {
                    if (!com.bytedance.tea.common.utility.d.a(str2) && map.get(str2) != null) {
                        this.ae.put(str2, map.get(str2));
                    }
                }
            }
            C0();
            if (this.ae.length() > 0) {
                this.ad.put("custom", this.ae);
            }
            aN = this.ae.optLong("total_currency_amount", 0L);
            String strOptString = this.ad.optString("user_unique_id", null);
            String strOptString2 = this.ad.optString("device_id", null);
            SharedPreferences sharedPreferences = this.ac.getSharedPreferences("header_custom", 0);
            if (!com.bytedance.tea.common.utility.d.a(aL)) {
                this.ad.put("user_unique_id", aL);
                sharedPreferences.edit().putString("user_unique_id", aL).commit();
            } else if (com.bytedance.tea.common.utility.d.a(strOptString) && !com.bytedance.tea.common.utility.d.a(strOptString2)) {
                this.ad.put("user_unique_id", strOptString2);
            }
            try {
                String string = sharedPreferences.getString("ab_version", null);
                if (com.bytedance.tea.common.utility.d.a(string)) {
                    string = "";
                }
                this.F = string;
                String string2 = sharedPreferences.getString("ab_delay_version", null);
                if (com.bytedance.tea.common.utility.d.a(string2)) {
                    str = string + "";
                    this.G = "";
                } else {
                    str = string + "," + string2;
                    this.G = string2;
                }
                String string3 = sharedPreferences.getString("ab_server_version", null);
                if (com.bytedance.tea.common.utility.d.a(string3)) {
                    string3 = "";
                }
                this.H = string3;
                this.ad.put("ab_version", str);
                this.ad.put("ab_server_version", this.H);
                String string4 = sharedPreferences.getString("ab_delay_configure", null);
                if (!com.bytedance.tea.common.utility.d.a(string4)) {
                    try {
                        this.D = new JSONObject(string4);
                        O(this.D, this.I);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                String string5 = sharedPreferences.getString("ab_configure", null);
                if (!com.bytedance.tea.common.utility.d.a(string5)) {
                    try {
                        this.E = new JSONObject(string5);
                        O(this.E, this.I);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                synchronized (K) {
                    try {
                        this.af.put("ab_config", this.I);
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
    }

    @Override // com.ss.android.tea.common.deviceregister.a.b
    public void b(String str, Bundle bundle) {
        s6.a.b(str, bundle);
    }

    @Override // com.ss.android.tea.common.deviceregister.a.InterfaceC0374a
    public void c(boolean z6, boolean z10) {
        if (this.f3104u) {
            this.f3104u = false;
        } else if (z6) {
            S(false, true, z10);
        }
    }

    @Override // com.ss.android.tea.common.deviceregister.a.InterfaceC0374a
    public void d(boolean z6) {
        M = true;
        if (N) {
            e0(this.ac);
        }
    }

    boolean d0(String str, boolean z6, boolean z10) {
        String strPost;
        c0 c0Var;
        try {
            Logger.d("AppLog", "app_log_config: " + str);
            byte[] bytes = str.getBytes("UTF-8");
            String strP0 = p0();
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z11 = jCurrentTimeMillis - aI < 600000;
            aI = jCurrentTimeMillis;
            byte[] bArr = (byte[]) bytes.clone();
            if (this.ac == null || !E0()) {
                strPost = NetworkClient.getDefault().post(strP0, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
            } else {
                try {
                    strPost = y.g(strP0, bArr, this.ac, z11);
                } catch (RuntimeException unused) {
                    strPost = NetworkClient.getDefault().post(strP0, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                }
            }
            if (strPost != null && strPost.length() != 0) {
                Logger.v("AppLog", "app_log_config response: " + strPost);
                if (z6 && (c0Var = this.aF) != null) {
                    c0Var.b();
                }
                JSONObject jSONObject = new JSONObject(strPost);
                if (!"ss_app_log".equals(jSONObject.optString("magic_tag"))) {
                    return false;
                }
                f fVar = new f(c.CONFIG_UPDATE);
                fVar.f3110b = jSONObject;
                fVar.d = String.valueOf(z10);
                if (z6) {
                    fVar.f3111c = 1L;
                }
                B(fVar);
                return true;
            }
            return false;
        } catch (Throwable th) {
            Logger.w("AppLog", "updateConfig exception: " + th);
            return false;
        }
    }

    @Override // com.ss.android.tea.common.deviceregister.a.InterfaceC0374a
    public void e(String str, String str2, String str3) {
        f fVar = new f(c.DEVICE_ID_UPDATE);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", str);
            jSONObject.put("install_id", str2);
            jSONObject.put("ssid", str3);
            fVar.f3110b = jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        B(fVar);
        this.f3104u = true;
    }

    void h() {
        TelephonyManager telephonyManager;
        JSONObject jSONObjectQ;
        HashSet<Integer> hashSet = this.as;
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        try {
            telephonyManager = (TelephonyManager) this.ac.getSystemService("phone");
        } catch (Throwable unused) {
            telephonyManager = null;
        }
        if (telephonyManager == null) {
            return;
        }
        if (hashSet.contains(1) && this.ag.isNull("m_phone_number")) {
            try {
                String strA = com.bytedance.tea.common.utility.a.a.a(telephonyManager);
                if (strA != null && strA.length() > 0) {
                    this.ag.put("m_phone_number", strA);
                }
            } catch (Throwable th) {
                try {
                    this.ag.put("no_m_phone", th.getClass().getName());
                } catch (Exception unused2) {
                }
            }
            try {
                String line1Number = telephonyManager.getLine1Number();
                if (line1Number == null || line1Number.length() <= 0) {
                    this.ag.put("no_raw_phone", "empty");
                } else {
                    this.ag.put("raw_phone_number", line1Number);
                }
            } catch (Throwable th2) {
                try {
                    this.ag.put("no_raw_phone", th2.getClass().getName());
                } catch (Exception unused3) {
                }
            }
        }
        if (hashSet.contains(2) && this.ag.isNull("sim_serial")) {
            try {
                String simSerialNumber = telephonyManager.getSimSerialNumber();
                if (simSerialNumber != null && simSerialNumber.length() > 0 && simSerialNumber.length() < 30) {
                    this.ag.put("sim_serial", simSerialNumber);
                }
            } catch (Throwable unused4) {
            }
        }
        if (hashSet.contains(3) && this.ag.isNull("subscribe_id")) {
            try {
                String subscriberId = telephonyManager.getSubscriberId();
                if (subscriberId != null && subscriberId.length() > 0 && subscriberId.length() < 30) {
                    this.ag.put("subscribe_id", subscriberId);
                }
            } catch (Throwable unused5) {
            }
        }
        if (hashSet.contains(4) && this.ag.isNull("sim_op")) {
            try {
                String simOperator = telephonyManager.getSimOperator();
                if (simOperator != null && simOperator.length() > 0 && simOperator.length() < 30) {
                    this.ag.put("sim_op", simOperator);
                }
            } catch (Throwable unused6) {
            }
        }
        if (hashSet.contains(4) && this.ag.isNull("net_op")) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                if (networkOperator != null && networkOperator.length() > 0 && networkOperator.length() < 30) {
                    this.ag.put("net_op", networkOperator);
                }
            } catch (Throwable unused7) {
            }
        }
        if (hashSet.contains(4) && this.ag.isNull("phone_type")) {
            try {
                this.ag.put("phone_type", telephonyManager.getPhoneType());
            } catch (Exception unused8) {
            }
        }
        if (hashSet.contains(4) && this.ag.isNull("net_type")) {
            try {
                this.ag.put("net_type", telephonyManager.getNetworkType());
            } catch (Exception unused9) {
            }
        }
        if (hashSet.contains(5) && this.ag.isNull("third_part_account") && (jSONObjectQ = q()) != null) {
            try {
                this.ag.put("third_part_account", jSONObjectQ);
            } catch (Exception unused10) {
            }
        }
        if (hashSet.contains(6)) {
            try {
                c0 c0Var = this.aF;
                String strC = c0Var != null ? c0Var.c() : null;
                if (TextUtils.isEmpty(strC)) {
                    return;
                }
                this.ag.put("wifi_bssid", strC);
            } catch (Exception unused11) {
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        w wVar = this.n;
        if (th != null && wVar != null) {
            try {
                JSONObject jSONObjectF = k.f(this.ac, thread, th);
                jSONObjectF.put("last_create_activity", f);
                jSONObjectF.put("last_resume_activity", g);
                jSONObjectF.put("last_create_activity_time", h);
                jSONObjectF.put("last_resume_activity_time", f3094i);
                jSONObjectF.put("app_start_time", aE);
                jSONObjectF.put("app_start_time_readable", new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date(aE)));
                jSONObjectF.put("alive_activities", p6.a.a());
                jSONObjectF.put("running_task_info", t6.d.i(this.ac));
                wVar.n(jSONObjectF);
            } catch (Exception unused) {
            }
        }
        if (!t6.d.f(this.ac)) {
            try {
                if (Logger.debug()) {
                    Logger.d("process", "uncaughtException kill myself");
                }
                Process.killProcess(Process.myPid());
                return;
            } catch (Throwable unused2) {
                return;
            }
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.o;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }

    HashSet<Integer> w(JSONArray jSONArray) throws JSONException {
        HashSet<Integer> hashSet = new HashSet<>();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = jSONArray.getInt(i10);
            if (i11 > 0) {
                hashSet.add(Integer.valueOf(i11));
            }
        }
        return hashSet;
    }

    void x(long j6, boolean z6) {
        m mVarT = m.t(this.ac);
        x xVar = this.ao;
        if (xVar != null && ((xVar.k || j6 - xVar.h < this.ap) && (!xVar.f3179i || z6))) {
            if (z6) {
                return;
            }
            xVar.k = true;
            xVar.h = j6;
            return;
        }
        U0();
        x xVar2 = this.ao;
        x xVar3 = new x();
        xVar3.f3177b = Y0();
        xVar3.f3178c = j6;
        xVar3.d = this.aO.getAndIncrement();
        m();
        xVar3.h = xVar3.f3178c;
        xVar3.e = 0;
        xVar3.f = V;
        xVar3.g = W;
        xVar3.f3179i = z6;
        if (!z6) {
            xVar3.k = true;
        }
        long jD = mVarT.d(xVar3);
        if (jD > 0) {
            xVar3.f3176a = jD;
            this.ao = xVar3;
            Logger.i("AppLog", "start new session " + xVar3.f3177b);
        } else {
            this.ao = null;
        }
        if (xVar2 != null || this.ao != null) {
            v vVar = new v();
            vVar.f3165a = xVar2;
            if (r <= 0) {
                r = 6;
            }
            x xVar4 = this.ao;
            if (xVar4 != null && !xVar4.f3179i) {
                vVar.f3166b = xVar4;
            }
            G(vVar);
        }
        if (z6 || !n6.b.f3284a) {
            return;
        }
        Q(z6);
    }

    private b(Context context, n6.a aVar) {
        this.o = null;
        y.h(this);
        this.f3103t = context.getApplicationContext();
        this.aD = aVar;
        com.ss.android.tea.common.deviceregister.e.e(aVar);
        Context applicationContext = context.getApplicationContext();
        this.ac = applicationContext;
        this.ad = new JSONObject();
        this.ae = new JSONObject();
        this.af = new JSONObject();
        this.I = new JSONObject();
        this.ag = new JSONObject();
        aE = System.currentTimeMillis();
        X(context);
        new g().start();
        if (U) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            this.o = defaultUncaughtExceptionHandler;
            if (defaultUncaughtExceptionHandler == this) {
                this.o = null;
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this);
            }
        }
        this.aF = new c0(applicationContext);
    }

    public static String M0(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                byte[] bytes = str.getBytes("UTF-8");
                int length = bytes.length;
                for (int i10 = 0; i10 < length; i10++) {
                    bytes[i10] = (byte) (bytes[i10] ^ (-99));
                }
                return Base64.encodeToString(bytes, 10);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static void Q0(String str, String str2) {
        if (com.bytedance.tea.common.utility.d.a(str) && com.bytedance.tea.common.utility.d.a(str2)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (!com.bytedance.tea.common.utility.d.a(str)) {
            com.ss.android.tea.common.deviceregister.c.d(str);
            try {
                jSONObject.put("app_language", str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (!com.bytedance.tea.common.utility.d.a(str2)) {
            com.ss.android.tea.common.deviceregister.c.f(str2);
            try {
                jSONObject.put("app_region", str2);
            } catch (JSONException e6) {
                e6.printStackTrace();
            }
        }
        b bVar = T;
        if (bVar != null) {
            f fVar = new f(c.UPDATE_APP_LANGUAGE_REGION);
            fVar.f3110b = jSONObject;
            bVar.B(fVar);
        }
    }

    @Deprecated
    public static void R0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return;
        }
        com.ss.android.tea.common.deviceregister.c.b(str);
        b bVar = T;
        if (bVar != null) {
            f fVar = new f(c.UPDATE_GOOGLE_AID);
            fVar.f3110b = str;
            bVar.B(fVar);
        }
    }

    public static void T0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            str = t0();
        }
        b bVar = T;
        if (bVar != null) {
            bVar.f0(str);
        } else {
            aL = str;
        }
        com.ss.android.tea.common.deviceregister.d.o(str);
        com.ss.android.tea.common.deviceregister.a.h();
    }

    private void X(Context context) {
        g();
        l.r(context).p();
        l();
    }

    private static void Y(Context context, String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h hVar = new h(str, i10);
        b bVarR0 = r0();
        if (bVarR0 != null) {
            bVarR0.a0(hVar);
        }
        com.ss.android.tea.common.deviceregister.a.n();
    }

    private Object l0(String str) {
        JSONObject jSONObjectOptJSONObject;
        if (com.bytedance.tea.common.utility.d.a(str) || this.af == null) {
            return null;
        }
        synchronized (K) {
            jSONObjectOptJSONObject = this.af.optJSONObject("ab_config");
        }
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        return jSONObjectOptJSONObject.opt(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        String strPost;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j6 = 600000;
            if (this.B >= 600000) {
                j6 = this.B;
            }
            if (jCurrentTimeMillis - this.C > j6) {
                if (com.bytedance.tea.common.utility.d.a(aL) && com.bytedance.tea.common.utility.d.a(com.ss.android.tea.common.deviceregister.a.i())) {
                    return;
                }
                this.C = jCurrentTimeMillis;
                JSONObject jSONObject = new JSONObject(this.ad, f3091a);
                if (com.bytedance.tea.common.utility.d.a(aL) && com.bytedance.tea.common.utility.d.a(jSONObject.optString("user_unique_id"))) {
                    jSONObject.put("user_unique_id", com.ss.android.tea.common.deviceregister.a.i());
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("header", jSONObject);
                jSONObject2.put("magic_tag", "ss_app_log");
                jSONObject2.put("_gen_time", System.currentTimeMillis());
                byte[] bytes = jSONObject2.toString().getBytes("UTF-8");
                String strV0 = v0();
                byte[] bArr = (byte[]) bytes.clone();
                if (this.ac != null && E0()) {
                    try {
                        strPost = y.g(strV0, bArr, this.ac, false);
                    } catch (RuntimeException unused) {
                        strPost = NetworkClient.getDefault().post(strV0, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                    }
                } else {
                    strPost = NetworkClient.getDefault().post(strV0, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                }
                if (strPost != null && strPost.length() != 0) {
                    JSONObject jSONObject3 = new JSONObject(strPost);
                    if ("success".equalsIgnoreCase(jSONObject3.optString(AccountNotice.LEVEL_MESSAGE))) {
                        f fVar = new f(c.AB_CONFIG_UPDATE);
                        fVar.f3110b = jSONObject3;
                        B(fVar);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.ss.android.tea.common.deviceregister.a.c(this);
    }

    private static void y(Context context, String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        g = str;
        f3094i = g + "(" + String.valueOf(System.currentTimeMillis()) + ")";
        h hVar = new h(str, i10);
        b bVarR0 = r0();
        if (bVarR0 != null) {
            bVarR0.C(hVar);
        }
        com.ss.android.tea.common.deviceregister.a.o();
    }

    private void y0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.ac.getSharedPreferences("header_custom", 0).edit();
        editorEdit.putString("ab_server_version", str);
        editorEdit.apply();
        if (this.n != null) {
            try {
                this.ad.put("ab_server_version", str);
                this.n.l(new JSONObject(this.ad, f3091a));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    static void z(Context context, String str, String str2) {
        A(context, "umeng", str, str2, 0L, 0L, false, null);
    }

    void N0() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.ax > 60000) {
            this.ax = jCurrentTimeMillis;
            synchronized (this.m) {
                this.m.notify();
            }
        }
    }

    String V0() {
        Calendar calendar = Calendar.getInstance();
        return "" + calendar.get(1) + calendar.get(2) + calendar.get(5);
    }

    String Y0() {
        return UUID.randomUUID().toString();
    }

    @Override // com.ss.android.tea.common.deviceregister.a.b
    public void f(Context context, String str, String str2, String str3, long j6, long j10, JSONObject jSONObject) {
        G0(context, str, str2, str3, j6, j10, jSONObject);
    }

    void f0(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return;
        }
        f fVar = new f(c.ADD_UNIQUE_ID);
        fVar.f3110b = str;
        B(fVar);
    }

    void j0(String str) {
        try {
            if (!com.bytedance.tea.common.utility.d.a(str) && !str.equals(aL)) {
                this.ac.getSharedPreferences("header_custom", 0).edit().putString("user_unique_id", str).commit();
                aL = str;
                this.ad.put("user_unique_id", aL);
                if (this.n != null) {
                    this.n.l(new JSONObject(this.ad, f3091a));
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
