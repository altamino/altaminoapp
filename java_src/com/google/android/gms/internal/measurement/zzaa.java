package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.scene.poll.ScenePollPlayView;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class zzaa {
    private static Boolean zzaf = null;
    private static Boolean zzag = null;

    @VisibleForTesting
    private static String zzah = "use_dynamite_api";

    @VisibleForTesting
    private static String zzai = "allow_remote_dynamite";
    private static boolean zzaj;
    private static boolean zzak;
    private static volatile zzaa zzz;
    protected final Clock zzaa;
    private final ExecutorService zzab;
    private final AppMeasurementSdk zzac;
    private Map<com.google.android.gms.measurement.internal.zzdb, zzc> zzad;
    private int zzae;
    private boolean zzal;
    private String zzam;
    private zzn zzan;
    private final String zzw;

    class zzd implements Application.ActivityLifecycleCallbacks {
        zzd() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzaa.this.zza(new zzbe(this, activity, bundle));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzaa.this.zza(new zzbf(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzaa.this.zza(new zzbg(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzaa.this.zza(new zzbh(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzaa.this.zza(new zzbi(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzm zzmVar = new zzm();
            zzaa.this.zza(new zzbj(this, activity, zzmVar));
            Bundle bundleZzb = zzmVar.zzb(50L);
            if (bundleZzb != null) {
                bundle.putAll(bundleZzb);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzaa.this.zza(new zzbk(this, activity));
        }
    }

    public static zzaa zza(Context context) {
        return zza(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    abstract class zza implements Runnable {
        final long timestamp;
        final long zzbs;
        private final boolean zzbt;

        zza(zzaa zzaaVar) {
            this(true);
        }

        abstract void zzl() throws RemoteException;

        protected void zzm() {
        }

        zza(boolean z) {
            this.timestamp = zzaa.this.zzaa.currentTimeMillis();
            this.zzbs = zzaa.this.zzaa.elapsedRealtime();
            this.zzbt = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzaa.this.zzal) {
                zzm();
                return;
            }
            try {
                zzl();
            } catch (Exception e) {
                zzaa.this.zza(e, false, this.zzbt);
                zzm();
            }
        }
    }

    public static zzaa zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzz == null) {
            synchronized (zzaa.class) {
                if (zzz == null) {
                    zzz = new zzaa(context, str, str2, str3, bundle);
                }
            }
        }
        return zzz;
    }

    static class zzb extends zzu {
        private final com.google.android.gms.measurement.internal.zzda zzbu;

        zzb(com.google.android.gms.measurement.internal.zzda zzdaVar) {
            this.zzbu = zzdaVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzt
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            this.zzbu.interceptEvent(str, str2, bundle, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzt
        public final int id() {
            return this.zzbu.hashCode();
        }
    }

    static class zzc extends zzu {
        private final com.google.android.gms.measurement.internal.zzdb zzbv;

        zzc(com.google.android.gms.measurement.internal.zzdb zzdbVar) {
            this.zzbv = zzdbVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzt
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            this.zzbv.onEvent(str, str2, bundle, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzt
        public final int id() {
            return this.zzbv.hashCode();
        }
    }

    public final AppMeasurementSdk zzh() {
        return this.zzac;
    }

    private zzaa(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !zza(str2, str3)) {
            this.zzw = "FA";
        } else {
            this.zzw = str;
        }
        this.zzaa = DefaultClock.getInstance();
        this.zzab = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.zzac = new AppMeasurementSdk(this);
        if (!(!zzb(context) || zzi())) {
            this.zzam = null;
            this.zzal = true;
            Log.w(this.zzw, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!zza(str2, str3)) {
            this.zzam = "fa";
            if (str2 != null && str3 != null) {
                Log.v(this.zzw, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
                this.zzal = true;
                return;
            } else {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.zzw, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            }
        } else {
            this.zzam = str2;
        }
        zza(new zzab(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.zzw, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzd());
        }
    }

    private static boolean zzb(Context context) {
        try {
            GoogleServices.initialize(context);
        } catch (IllegalStateException unused) {
        }
        return GoogleServices.getGoogleAppId() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(String str, String str2) {
        return (str2 == null || str == null || zzi()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zza zzaVar) {
        this.zzab.execute(zzaVar);
    }

    protected final zzn zza(Context context, boolean z) {
        DynamiteModule.VersionPolicy versionPolicy;
        try {
            if (z) {
                versionPolicy = DynamiteModule.PREFER_HIGHEST_OR_REMOTE_VERSION;
            } else {
                versionPolicy = DynamiteModule.PREFER_LOCAL;
            }
            return zzo.asInterface(DynamiteModule.load(context, versionPolicy, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            zza((Exception) e, true, false);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzc(Context context) {
        return DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(Context context) {
        return DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Exception exc, boolean z, boolean z2) {
        this.zzal |= z;
        if (z) {
            Log.w(this.zzw, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            zza(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
        Log.w(this.zzw, "Error with data collection. Data lost.", exc);
    }

    private static boolean zzi() throws ClassNotFoundException {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final void zza(com.google.android.gms.measurement.internal.zzda zzdaVar) {
        zza(new zzam(this, zzdaVar));
    }

    public final void zza(com.google.android.gms.measurement.internal.zzdb zzdbVar) {
        zza(new zzax(this, zzdbVar));
    }

    public final void zzb(com.google.android.gms.measurement.internal.zzdb zzdbVar) {
        zza(new zzba(this, zzdbVar));
    }

    public final void logEvent(String str, Bundle bundle) {
        zza(null, str, bundle, false, true, null);
    }

    public final void logEventInternal(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, null);
    }

    public final void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        zza(str, str2, bundle, true, false, Long.valueOf(j));
    }

    private final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zza(new zzbb(this, l, str, str2, bundle, z, z2));
    }

    public final void setUserProperty(String str, String str2) {
        zza((String) null, str, (Object) str2, false);
    }

    public final void setUserPropertyInternal(String str, String str2, Object obj) {
        zza(str, str2, obj, true);
    }

    private final void zza(String str, String str2, Object obj, boolean z) {
        zza(new zzbc(this, str, str2, obj, z));
    }

    public final void setConditionalUserProperty(Bundle bundle) {
        zza(new zzbd(this, bundle));
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zza(new zzac(this, str, str2, bundle));
    }

    public final List<Bundle> getConditionalUserProperties(String str, String str2) {
        zzm zzmVar = new zzm();
        zza(new zzad(this, str, str2, zzmVar));
        List<Bundle> list = (List) zzm.zza(zzmVar.zzb(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final void setUserId(String str) {
        zza(new zzae(this, str));
    }

    public final void setCurrentScreen(Activity activity, String str, String str2) {
        zza(new zzaf(this, activity, str, str2));
    }

    public final void setMeasurementEnabled(boolean z) {
        zza(new zzag(this, z));
    }

    public final void resetAnalyticsData() {
        zza(new zzah(this));
    }

    public final void setMinimumSessionDuration(long j) {
        zza(new zzai(this, j));
    }

    public final void setSessionTimeoutDuration(long j) {
        zza(new zzaj(this, j));
    }

    public final void beginAdUnitExposure(String str) {
        zza(new zzak(this, str));
    }

    public final void endAdUnitExposure(String str) {
        zza(new zzal(this, str));
    }

    public final String getGmpAppId() {
        zzm zzmVar = new zzm();
        zza(new zzan(this, zzmVar));
        return zzmVar.zza(500L);
    }

    public final String zzj() {
        zzm zzmVar = new zzm();
        zza(new zzao(this, zzmVar));
        return zzmVar.zza(50L);
    }

    public final long generateEventId() {
        zzm zzmVar = new zzm();
        zza(new zzap(this, zzmVar));
        Long l = (Long) zzm.zza(zzmVar.zzb(500L), Long.class);
        if (l == null) {
            long jNextLong = new Random(System.nanoTime() ^ this.zzaa.currentTimeMillis()).nextLong();
            int i = this.zzae + 1;
            this.zzae = i;
            return jNextLong + i;
        }
        return l.longValue();
    }

    public final String getCurrentScreenName() {
        zzm zzmVar = new zzm();
        zza(new zzaq(this, zzmVar));
        return zzmVar.zza(500L);
    }

    public final String getCurrentScreenClass() {
        zzm zzmVar = new zzm();
        zza(new zzar(this, zzmVar));
        return zzmVar.zza(500L);
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzm zzmVar = new zzm();
        zza(new zzas(this, str, str2, z, zzmVar));
        Bundle bundleZzb = zzmVar.zzb(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        if (bundleZzb == null || bundleZzb.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleZzb.size());
        for (String str3 : bundleZzb.keySet()) {
            Object obj = bundleZzb.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zza(new zzat(this, false, 5, str, obj, null, null));
    }

    public final Bundle zza(Bundle bundle, boolean z) {
        zzm zzmVar = new zzm();
        zza(new zzau(this, bundle, zzmVar));
        if (z) {
            return zzmVar.zzb(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
        return null;
    }

    public final int getMaxUserProperties(String str) {
        zzm zzmVar = new zzm();
        zza(new zzav(this, str, zzmVar));
        Integer num = (Integer) zzm.zza(zzmVar.zzb(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String getAppInstanceId() {
        zzm zzmVar = new zzm();
        zza(new zzaw(this, zzmVar));
        return zzmVar.zza(StickerService.SHARED_REQUEST_INTERVAL);
    }

    public final String getAppIdOrigin() {
        return this.zzam;
    }

    public final Object zzb(int i) {
        zzm zzmVar = new zzm();
        zza(new zzay(this, zzmVar, i));
        return zzm.zza(zzmVar.zzb(ScenePollPlayView.POLL_COUNT_DOWN_MS), Object.class);
    }

    public final void setDataCollectionEnabled(boolean z) {
        zza(new zzaz(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zze(Context context) {
        synchronized (zzaa.class) {
            try {
            } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                zzaf = false;
                zzag = false;
            }
            if (zzaf == null || zzag == null) {
                if (zza(context, "app_measurement_internal_disable_startup_flags")) {
                    zzaf = false;
                    zzag = false;
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                zzaf = Boolean.valueOf(sharedPreferences.getBoolean(zzah, false));
                zzag = Boolean.valueOf(sharedPreferences.getBoolean(zzai, false));
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.remove(zzah);
                editorEdit.remove(zzai);
                editorEdit.apply();
            }
        }
    }

    public static boolean zzf(Context context) {
        zze(context);
        return zzaf.booleanValue();
    }

    private static boolean zza(Context context, String str) {
        Preconditions.checkNotEmpty(str);
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData.getBoolean(str);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
