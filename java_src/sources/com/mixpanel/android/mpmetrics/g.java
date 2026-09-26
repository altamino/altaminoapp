package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class g {
    private static final String APP_LINKS_LOGTAG = "MixpanelAPI.AL";
    private static final String ENGAGE_DATE_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss";
    private static final String LOGTAG = "MixpanelAPI.API";
    public static final String VERSION = "7.5.2";
    private static final Map<String, Map<Context, g>> sInstanceMap = new HashMap();
    private static final k sPrefsLoader = new k();
    private static Future<SharedPreferences> sReferrerPrefs;
    private final com.mixpanel.android.mpmetrics.d mConfig;
    private final Context mContext;
    private final Map<String, String> mDeviceInfo;
    private final Map<String, Long> mEventTimings;
    private final Map<String, Object> mGroups;
    private final String mInstanceName;
    private final com.mixpanel.android.mpmetrics.a mMessages;
    private h mMixpanelActivityLifecycleCallbacks;
    private final e mPeople;
    private final i mPersistentIdentity;
    private final j mSessionMetadata;
    private final String mToken;
    private final Boolean mTrackAutomaticEvents;

    class a implements k.b {
        a() {
        }

        @Override // com.mixpanel.android.mpmetrics.k.b
        public void a(SharedPreferences sharedPreferences) {
            String strN = i.n(sharedPreferences);
            if (strN != null) {
                g.this.y(strN);
            }
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            JSONObject jSONObject = new JSONObject();
            Bundle bundleExtra = intent.getBundleExtra("event_args");
            if (bundleExtra != null) {
                for (String str : bundleExtra.keySet()) {
                    try {
                        jSONObject.put(str, bundleExtra.get(str));
                    } catch (JSONException e) {
                        com.mixpanel.android.util.d.d(g.APP_LINKS_LOGTAG, "failed to add key \"" + str + "\" to properties for tracking bolts event", e);
                    }
                }
            }
            g.this.G("$" + intent.getStringExtra("event_name"), jSONObject);
        }
    }

    interface c {
        void a(g gVar);
    }

    public interface d {
        void a();

        void b();

        boolean c();

        void d(String str, Object obj);

        void e(String str, double d);
    }

    private class e implements d {
        private e() {
        }

        /* synthetic */ e(g gVar, f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(String str) {
            synchronized (g.this.mPersistentIdentity) {
                g.this.mPersistentIdentity.F(str);
            }
            g.this.y(str);
        }

        private JSONObject k(String str, Object obj) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            String strG = g();
            String strK = g.this.k();
            jSONObject.put(str, obj);
            jSONObject.put("$token", g.this.mToken);
            jSONObject.put("$time", System.currentTimeMillis());
            jSONObject.put("$had_persisted_distinct_id", g.this.mPersistentIdentity.k());
            if (strK != null) {
                jSONObject.put("$device_id", strK);
            }
            if (strG != null) {
                jSONObject.put("$distinct_id", strG);
                jSONObject.put("$user_id", strG);
            }
            jSONObject.put("$mp_metadata", g.this.mSessionMetadata.b());
            return jSONObject;
        }

        @Override // com.mixpanel.android.mpmetrics.g.d
        public void a() {
            l("$transactions");
        }

        @Override // com.mixpanel.android.mpmetrics.g.d
        public void b() {
            try {
                g.this.z(k("$delete", JSONObject.NULL));
            } catch (JSONException unused) {
                com.mixpanel.android.util.d.c(g.LOGTAG, "Exception deleting a user");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.g.d
        public void d(String str, Object obj) {
            if (g.this.s()) {
                return;
            }
            try {
                j(new JSONObject().put(str, obj));
            } catch (JSONException e) {
                com.mixpanel.android.util.d.d(g.LOGTAG, "set", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.g.d
        public void e(String str, double d) {
            if (g.this.s()) {
                return;
            }
            HashMap map = new HashMap();
            map.put(str, Double.valueOf(d));
            i(map);
        }

        public String g() {
            return g.this.mPersistentIdentity.m();
        }

        public void i(Map<String, ? extends Number> map) {
            if (g.this.s()) {
                return;
            }
            try {
                g.this.z(k("$add", new JSONObject(map)));
            } catch (JSONException e) {
                com.mixpanel.android.util.d.d(g.LOGTAG, "Exception incrementing properties", e);
            }
        }

        public void j(JSONObject jSONObject) {
            if (g.this.s()) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(g.this.mDeviceInfo);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject2.put(next, jSONObject.get(next));
                }
                g.this.z(k("$set", jSONObject2));
            } catch (JSONException e) {
                com.mixpanel.android.util.d.d(g.LOGTAG, "Exception setting people properties", e);
            }
        }

        public void l(String str) {
            if (g.this.s()) {
                return;
            }
            try {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(str);
                g.this.z(k("$unset", jSONArray));
            } catch (JSONException e) {
                com.mixpanel.android.util.d.d(g.LOGTAG, "Exception unsetting a property", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.g.d
        public boolean c() {
            if (g() != null) {
                return true;
            }
            return false;
        }
    }

    g(Context context, Future<SharedPreferences> future, String str, boolean z6, JSONObject jSONObject, String str2, boolean z10) {
        this(context, future, str, com.mixpanel.android.mpmetrics.d.k(context, str2), z6, jSONObject, str2, z10);
    }

    public static g m(Context context, String str, boolean z6) {
        return n(context, str, false, null, null, z6);
    }

    public static g n(Context context, String str, boolean z6, JSONObject jSONObject, String str2, boolean z10) {
        g gVar;
        if (str == null || context == null) {
            return null;
        }
        Map<String, Map<Context, g>> map = sInstanceMap;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (sReferrerPrefs == null) {
                    sReferrerPrefs = sPrefsLoader.a(context, "com.mixpanel.android.mpmetrics.ReferralInfo", null);
                }
                String str3 = str2 != null ? str2 : str;
                Map<Context, g> map2 = map.get(str3);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(str3, map2);
                }
                Map<Context, g> map3 = map2;
                gVar = map3.get(applicationContext);
                if (gVar == null && com.mixpanel.android.mpmetrics.b.a(applicationContext)) {
                    g gVar2 = new g(applicationContext, sReferrerPrefs, str, z6, jSONObject, str2, z10);
                    A(context, gVar2);
                    map3.put(applicationContext, gVar2);
                    gVar = gVar2;
                }
                h(context);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    public d o() {
        return this.mPeople;
    }

    public Boolean q() {
        return this.mTrackAutomaticEvents;
    }

    public void t(String str) {
        u(str, true);
    }

    g(Context context, Future<SharedPreferences> future, String str, com.mixpanel.android.mpmetrics.d dVar, boolean z6, JSONObject jSONObject, String str2, boolean z10) {
        this.mContext = context;
        this.mToken = str;
        this.mInstanceName = str2;
        this.mPeople = new e(this, null);
        this.mGroups = new HashMap();
        this.mConfig = dVar;
        this.mTrackAutomaticEvents = Boolean.valueOf(z10);
        HashMap map = new HashMap();
        map.put("$android_lib_version", "7.5.2");
        map.put("$android_os", "Android");
        String str3 = Build.VERSION.RELEASE;
        map.put("$android_os_version", str3 == null ? "UNKNOWN" : str3);
        String str4 = Build.MANUFACTURER;
        map.put("$android_manufacturer", str4 == null ? "UNKNOWN" : str4);
        String str5 = Build.BRAND;
        map.put("$android_brand", str5 == null ? "UNKNOWN" : str5);
        String str6 = Build.MODEL;
        map.put("$android_model", str6 != null ? str6 : "UNKNOWN");
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            map.put("$android_app_version", packageInfo.versionName);
            map.put("$android_app_version_code", Integer.toString(packageInfo.versionCode));
        } catch (PackageManager.NameNotFoundException e2) {
            com.mixpanel.android.util.d.d(LOGTAG, "Exception getting app version name", e2);
        }
        this.mDeviceInfo = Collections.unmodifiableMap(map);
        this.mSessionMetadata = new j();
        this.mMessages = j();
        i iVarP = p(context, future, str, str2);
        this.mPersistentIdentity = iVarP;
        this.mEventTimings = iVarP.q();
        if (z6 && (s() || !iVarP.r(str))) {
            x();
        }
        if (jSONObject != null) {
            C(jSONObject);
        }
        boolean zExists = com.mixpanel.android.mpmetrics.e.r(this.mContext, this.mConfig).p().exists();
        B();
        if (iVarP.s(zExists, this.mToken) && this.mTrackAutomaticEvents.booleanValue()) {
            H("$ae_first_open", null, true);
            iVarP.D(this.mToken);
        }
        if (E() && this.mTrackAutomaticEvents.booleanValue()) {
            G("$app_open", null);
        }
        if (iVarP.t((String) map.get("$android_app_version_code")) && this.mTrackAutomaticEvents.booleanValue()) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("$ae_updated_version", map.get("$android_app_version"));
                H("$ae_updated", jSONObject2, true);
            } catch (JSONException unused) {
            }
        }
        if (!this.mConfig.d()) {
            com.mixpanel.android.mpmetrics.c.a();
        }
        if (this.mConfig.s()) {
            this.mMessages.o(new File(this.mContext.getApplicationInfo().dataDir));
        }
    }

    private static void A(Context context, g gVar) {
        try {
            int i10 = LocalBroadcastManager.f222a;
            LocalBroadcastManager.class.getMethod("registerReceiver", BroadcastReceiver.class, IntentFilter.class).invoke(LocalBroadcastManager.class.getMethod("getInstance", Context.class).invoke(null, context), gVar.new b(), new IntentFilter("com.parse.bolts.measurement_event"));
        } catch (ClassNotFoundException e2) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "To enable App Links tracking, add implementation 'androidx.localbroadcastmanager:localbroadcastmanager:1.0.0': " + e2.getMessage());
        } catch (IllegalAccessException e6) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "App Links tracking will not be enabled due to this exception: " + e6.getMessage());
        } catch (NoSuchMethodException e7) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "To enable App Links tracking, add implementation 'androidx.localbroadcastmanager:localbroadcastmanager:1.0.0': " + e7.getMessage());
        } catch (InvocationTargetException e10) {
            com.mixpanel.android.util.d.b(APP_LINKS_LOGTAG, "Failed to invoke LocalBroadcastManager.registerReceiver() -- App Links tracking will not be enabled due to this exception", e10);
        }
    }

    static void g(c cVar) {
        Map<String, Map<Context, g>> map = sInstanceMap;
        synchronized (map) {
            try {
                Iterator<Map<Context, g>> it = map.values().iterator();
                while (it.hasNext()) {
                    Iterator<g> it2 = it.next().values().iterator();
                    while (it2.hasNext()) {
                        cVar.a(it2.next());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void h(Context context) {
        if (!(context instanceof Activity)) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "Context is not an instance of Activity. To detect inbound App Links, pass an instance of an Activity to getInstance.");
            return;
        }
        try {
            Class.forName("bolts.AppLinks").getMethod("getTargetUrlFromInboundIntent", Context.class, Intent.class).invoke(null, context, ((Activity) context).getIntent());
        } catch (ClassNotFoundException e2) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "Please install the Bolts library >= 1.1.2 to track App Links: " + e2.getMessage());
        } catch (IllegalAccessException e6) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "Unable to detect inbound App Links: " + e6.getMessage());
        } catch (NoSuchMethodException e7) {
            com.mixpanel.android.util.d.a(APP_LINKS_LOGTAG, "Please install the Bolts library >= 1.1.2 to track App Links: " + e7.getMessage());
        } catch (InvocationTargetException e10) {
            com.mixpanel.android.util.d.b(APP_LINKS_LOGTAG, "Failed to invoke bolts.AppLinks.getTargetUrlFromInboundIntent() -- Unable to detect inbound App Links", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(String str) {
        this.mMessages.n(new com.mixpanel.android.mpmetrics.a.f(str, this.mToken));
    }

    @TargetApi(14)
    void B() {
        if (!(this.mContext.getApplicationContext() instanceof Application)) {
            com.mixpanel.android.util.d.e(LOGTAG, "Context is not an Application, Mixpanel won't be able to automatically flush on an app background.");
            return;
        }
        Application application = (Application) this.mContext.getApplicationContext();
        h hVar = new h(this, this.mConfig);
        this.mMixpanelActivityLifecycleCallbacks = hVar;
        application.registerActivityLifecycleCallbacks(hVar);
    }

    public void D() {
        this.mPersistentIdentity.e();
        j().c(new com.mixpanel.android.mpmetrics.a.c(this.mToken));
        u(l(), false);
        i();
    }

    boolean E() {
        return !this.mConfig.c();
    }

    com.mixpanel.android.mpmetrics.a j() {
        return com.mixpanel.android.mpmetrics.a.g(this.mContext, this.mConfig);
    }

    public String k() {
        return this.mPersistentIdentity.h();
    }

    public String l() {
        return this.mPersistentIdentity.i();
    }

    i p(Context context, Future<SharedPreferences> future, String str, String str2) {
        a aVar = new a();
        if (str2 != null) {
            str = str2;
        }
        k kVar = sPrefsLoader;
        return new i(future, kVar.a(context, "com.mixpanel.android.mpmetrics.MixpanelAPI_" + str, aVar), kVar.a(context, "com.mixpanel.android.mpmetrics.MixpanelAPI.TimeEvents_" + str, null), kVar.a(context, "com.mixpanel.android.mpmetrics.Mixpanel", null));
    }

    protected String r() {
        return this.mPersistentIdentity.j();
    }

    public boolean s() {
        return this.mPersistentIdentity.l(this.mToken);
    }

    void v() {
        if (this.mConfig.i()) {
            i();
        }
    }

    void w() {
        this.mSessionMetadata.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(JSONObject jSONObject) {
        if (s()) {
            return;
        }
        this.mMessages.l(new com.mixpanel.android.mpmetrics.a.e(jSONObject, this.mToken));
    }

    public void C(JSONObject jSONObject) {
        if (s()) {
            return;
        }
        this.mPersistentIdentity.z(jSONObject);
    }

    public void F(String str) {
        if (s()) {
            return;
        }
        G(str, null);
    }

    public void G(String str, JSONObject jSONObject) {
        if (s()) {
            return;
        }
        H(str, jSONObject, false);
    }

    protected void H(String str, JSONObject jSONObject, boolean z6) {
        Long l;
        if (!s()) {
            if (!z6 || this.mTrackAutomaticEvents.booleanValue()) {
                synchronized (this.mEventTimings) {
                    l = this.mEventTimings.get(str);
                    this.mEventTimings.remove(str);
                    this.mPersistentIdentity.A(str);
                }
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, String> entry : this.mPersistentIdentity.o().entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue());
                    }
                    this.mPersistentIdentity.d(jSONObject2);
                    double dCurrentTimeMillis = System.currentTimeMillis() / 1000.0d;
                    String strL = l();
                    String strK = k();
                    String strR = r();
                    jSONObject2.put("time", System.currentTimeMillis());
                    jSONObject2.put("distinct_id", strL);
                    jSONObject2.put("$had_persisted_distinct_id", this.mPersistentIdentity.k());
                    if (strK != null) {
                        jSONObject2.put("$device_id", strK);
                    }
                    if (strR != null) {
                        jSONObject2.put("$user_id", strR);
                    }
                    if (l != null) {
                        jSONObject2.put("$duration", dCurrentTimeMillis - (l.longValue() / 1000.0d));
                    }
                    if (jSONObject != null) {
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObject2.put(next, jSONObject.opt(next));
                        }
                    }
                    this.mMessages.f(new com.mixpanel.android.mpmetrics.a.C0280a(str, jSONObject2, this.mToken, z6, this.mSessionMetadata.a()));
                } catch (JSONException e2) {
                    com.mixpanel.android.util.d.d(LOGTAG, "Exception tracking event " + str, e2);
                }
            }
        }
    }

    public void i() {
        if (s()) {
            return;
        }
        this.mMessages.m(new com.mixpanel.android.mpmetrics.a.c(this.mToken));
    }

    public void u(String str, boolean z6) {
        if (s()) {
            return;
        }
        if (str == null) {
            com.mixpanel.android.util.d.c(LOGTAG, "Can't identify with null distinct_id.");
            return;
        }
        synchronized (this.mPersistentIdentity) {
            try {
                String strI = this.mPersistentIdentity.i();
                if (!str.equals(strI)) {
                    if (str.startsWith("$device:")) {
                        com.mixpanel.android.util.d.c(LOGTAG, "Can't identify with '$device:' distinct_id.");
                        return;
                    }
                    this.mPersistentIdentity.C(str);
                    this.mPersistentIdentity.B(strI);
                    this.mPersistentIdentity.u();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("$anon_distinct_id", strI);
                        G("$identify", jSONObject);
                    } catch (JSONException unused) {
                        com.mixpanel.android.util.d.c(LOGTAG, "Could not track $identify event");
                    }
                }
                if (z6) {
                    this.mPeople.h(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void x() {
        j().e(new com.mixpanel.android.mpmetrics.a.c(this.mToken));
        if (o().c()) {
            o().b();
            o().a();
        }
        this.mPersistentIdentity.e();
        synchronized (this.mEventTimings) {
            this.mEventTimings.clear();
            this.mPersistentIdentity.g();
        }
        this.mPersistentIdentity.f();
        this.mPersistentIdentity.E(true, this.mToken);
    }
}
