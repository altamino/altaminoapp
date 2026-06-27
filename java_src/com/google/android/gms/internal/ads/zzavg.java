package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

@zzard
/* loaded from: classes2.dex */
public final class zzavg {
    private final AtomicReference<ThreadPoolExecutor> zzdsd = new AtomicReference<>(null);
    private final Object zzdse = new Object();
    private String zzdsf = null;
    private String zzdsg = null;

    @VisibleForTesting
    private final AtomicBoolean zzdsh = new AtomicBoolean(false);

    @VisibleForTesting
    private final AtomicInteger zzdsi = new AtomicInteger(-1);
    private final AtomicReference<Object> zzdsj = new AtomicReference<>(null);
    private final AtomicReference<Object> zzdsk = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> zzdsl = new ConcurrentHashMap(9);
    private final AtomicReference<zzbjf> zzdsm = new AtomicReference<>(null);
    private final List<FutureTask> zzdsn = new ArrayList();

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzx(android.content.Context r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacu.zzcns
            com.google.android.gms.internal.ads.zzacr r1 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L67
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.zzdsh
            boolean r0 = r0.get()
            if (r0 == 0) goto L1c
            goto L67
        L1c:
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzacu.zzcoc
            com.google.android.gms.internal.ads.zzacr r2 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r0 = r2.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 1
            if (r0 == 0) goto L30
            return r2
        L30:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.zzdsi
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L5e
            com.google.android.gms.internal.ads.zzyt.zzpa()
            r0 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r0 = com.google.android.gms.internal.ads.zzazt.zzc(r5, r0)
            if (r0 != 0) goto L59
            com.google.android.gms.internal.ads.zzyt.zzpa()
            boolean r5 = com.google.android.gms.internal.ads.zzazt.zzbg(r5)
            if (r5 == 0) goto L59
            java.lang.String r5 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            com.google.android.gms.internal.ads.zzbad.zzep(r5)
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdsi
            r5.set(r1)
            goto L5e
        L59:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdsi
            r5.set(r2)
        L5e:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdsi
            int r5 = r5.get()
            if (r5 != r2) goto L67
            return r2
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzavg.zzx(android.content.Context):boolean");
    }

    @VisibleForTesting
    private static boolean zzy(Context context) throws ClassNotFoundException {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcnz)).booleanValue()) {
            if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcoa)).booleanValue()) {
                return false;
            }
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcob)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public final void zzd(Context context, final String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zzx(context)) {
            if (zzy(context)) {
                zza("beginAdUnitExposure", new zzavw(str) { // from class: com.google.android.gms.internal.ads.zzavh
                    private final String zzddy;

                    {
                        this.zzddy = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzavw
                    public final void zza(zzbjf zzbjfVar) throws RemoteException {
                        zzbjfVar.beginAdUnitExposure(this.zzddy);
                    }
                });
            } else {
                zza(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void zze(Context context, final String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zzx(context)) {
            if (zzy(context)) {
                zza("endAdUnitExposure", new zzavw(str) { // from class: com.google.android.gms.internal.ads.zzavi
                    private final String zzddy;

                    {
                        this.zzddy = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzavw
                    public final void zza(zzbjf zzbjfVar) throws RemoteException {
                        zzbjfVar.endAdUnitExposure(this.zzddy);
                    }
                });
            } else {
                zza(context, str, "endAdUnitExposure");
            }
        }
    }

    public final String zzz(Context context) {
        if (!zzx(context)) {
            return "";
        }
        if (zzy(context)) {
            return (String) zza("getCurrentScreenNameOrScreenClass", "", (zzavv<String>) zzavm.zzdst);
        }
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdsj, true)) {
            return "";
        }
        try {
            String str = (String) zzl(context, "getCurrentScreenName").invoke(this.zzdsj.get(), new Object[0]);
            if (str == null) {
                str = (String) zzl(context, "getCurrentScreenClass").invoke(this.zzdsj.get(), new Object[0]);
            }
            return str != null ? str : "";
        } catch (Exception e) {
            zza(e, "getCurrentScreenName", false);
            return "";
        }
    }

    public final void zzf(final Context context, final String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zzx(context) && (context instanceof Activity)) {
            if (zzy(context)) {
                zza("setScreenName", new zzavw(context, str) { // from class: com.google.android.gms.internal.ads.zzavn
                    private final String zzdbk;
                    private final Context zzdef;

                    {
                        this.zzdef = context;
                        this.zzdbk = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzavw
                    public final void zza(zzbjf zzbjfVar) throws RemoteException {
                        Context context2 = this.zzdef;
                        zzbjfVar.zzb(ObjectWrapper.wrap(context2), this.zzdbk, context2.getPackageName());
                    }
                });
                return;
            }
            if (zza(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzdsk, false)) {
                try {
                    zzm(context, "setCurrentScreen").invoke(this.zzdsk.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e) {
                    zza(e, "setCurrentScreen", false);
                }
            }
        }
    }

    public final String zzaa(Context context) {
        if (!zzx(context)) {
            return null;
        }
        synchronized (this.zzdse) {
            if (this.zzdsf != null) {
                return this.zzdsf;
            }
            if (zzy(context)) {
                this.zzdsf = (String) zza("getGmpAppId", this.zzdsf, (zzavv<String>) zzavo.zzdst);
            } else {
                this.zzdsf = (String) zza("getGmpAppId", context);
            }
            return this.zzdsf;
        }
    }

    public final String zzab(final Context context) {
        if (!zzx(context)) {
            return null;
        }
        long jLongValue = ((Long) zzyt.zzpe().zzd(zzacu.zzcnx)).longValue();
        if (zzy(context)) {
            try {
                if (jLongValue < 0) {
                    return (String) zza("getAppInstanceId", zzavp.zzdst).get();
                }
                return (String) zza("getAppInstanceId", zzavq.zzdst).get(jLongValue, TimeUnit.MILLISECONDS);
            } catch (Exception e) {
                if (e instanceof TimeoutException) {
                    return "TIME_OUT";
                }
                return null;
            }
        }
        if (jLongValue < 0) {
            return (String) zza("getAppInstanceId", context);
        }
        Future futureSubmit = zzui().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.zzavr
            private final Context zzcjt;
            private final zzavg zzdsp;

            {
                this.zzdsp = this;
                this.zzcjt = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzdsp.zzaf(this.zzcjt);
            }
        });
        try {
            return (String) futureSubmit.get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (Exception e2) {
            futureSubmit.cancel(true);
            if (e2 instanceof TimeoutException) {
                return "TIME_OUT";
            }
            return null;
        }
    }

    public final String zzac(Context context) throws NoSuchMethodException, SecurityException {
        if (!zzx(context)) {
            return null;
        }
        if (zzy(context)) {
            Long l = (Long) zza("getAdEventId", (String) null, (zzavv<String>) zzavs.zzdst);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object objZza = zza("generateEventId", context);
        if (objZza != null) {
            return objZza.toString();
        }
        return null;
    }

    public final String zzad(Context context) {
        if (!zzx(context)) {
            return null;
        }
        synchronized (this.zzdse) {
            if (this.zzdsg != null) {
                return this.zzdsg;
            }
            if (zzy(context)) {
                this.zzdsg = (String) zza("getAppIdOrigin", this.zzdsg, (zzavv<String>) zzavt.zzdst);
            } else {
                this.zzdsg = "fa";
            }
            return this.zzdsg;
        }
    }

    public final void zzg(Context context, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        zza(context, "_ac", str, (Bundle) null);
    }

    public final void zzh(Context context, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        zza(context, "_ai", str, (Bundle) null);
    }

    public final void zzi(Context context, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        zza(context, "_aq", str, (Bundle) null);
    }

    public final void zzj(Context context, String str) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        zza(context, "_aa", str, (Bundle) null);
    }

    public final void zza(Context context, String str, String str2, String str3, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zzx(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("type", str3);
            bundle.putInt("value", i);
            zza(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzawz.zzds(sb.toString());
        }
    }

    private final void zza(Context context, final String str, String str2, Bundle bundle) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zzx(context)) {
            final Bundle bundleZzj = zzj(str2, str);
            if (bundle != null) {
                bundleZzj.putAll(bundle);
            }
            if (zzy(context)) {
                zza("logEventInternal", new zzavw(str, bundleZzj) { // from class: com.google.android.gms.internal.ads.zzavj
                    private final String zzddy;
                    private final Bundle zzdso;

                    {
                        this.zzddy = str;
                        this.zzdso = bundleZzj;
                    }

                    @Override // com.google.android.gms.internal.ads.zzavw
                    public final void zza(zzbjf zzbjfVar) throws RemoteException {
                        zzbjfVar.logEvent("am", this.zzddy, this.zzdso);
                    }
                });
                return;
            }
            if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdsj, true)) {
                try {
                    zzae(context).invoke(this.zzdsj.get(), "am", str, bundleZzj);
                } catch (Exception e) {
                    zza(e, "logEventInternal", true);
                }
            }
        }
    }

    private static Bundle zzj(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String strValueOf = String.valueOf(str);
            zzbad.zzc(strValueOf.length() != 0 ? "Invalid event ID: ".concat(strValueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Method zzae(Context context) throws NoSuchMethodException, SecurityException {
        Method method = this.zzdsl.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.zzdsl.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, "logEventInternal", true);
            return null;
        }
    }

    private final Method zzk(Context context, String str) throws NoSuchMethodException, SecurityException {
        Method method = this.zzdsl.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.zzdsl.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    private final Method zzl(Context context, String str) throws NoSuchMethodException, SecurityException {
        Method method = this.zzdsl.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzdsl.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    private final Method zzm(Context context, String str) throws NoSuchMethodException, SecurityException {
        Method method = this.zzdsl.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.zzdsl.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    private final void zza(Context context, String str, String str2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdsj, true)) {
            try {
                zzk(context, str2).invoke(this.zzdsj.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzawz.zzds(sb.toString());
            } catch (Exception e) {
                zza(e, str2, false);
            }
        }
    }

    private final Object zza(String str, Context context) throws NoSuchMethodException, SecurityException {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdsj, true)) {
            return null;
        }
        try {
            return zzl(context, str).invoke(this.zzdsj.get(), new Object[0]);
        } catch (Exception e) {
            zza(e, str, true);
            return null;
        }
    }

    private final void zza(Exception exc, String str, boolean z) {
        if (this.zzdsh.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
        sb.append("Invoke Firebase method ");
        sb.append(str);
        sb.append(" error.");
        zzbad.zzep(sb.toString());
        if (z) {
            zzbad.zzep("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zzdsh.set(true);
        }
    }

    private final ThreadPoolExecutor zzui() {
        if (this.zzdsd.get() == null) {
            this.zzdsd.compareAndSet(null, new ThreadPoolExecutor(((Integer) zzyt.zzpe().zzd(zzacu.zzcny)).intValue(), ((Integer) zzyt.zzpe().zzd(zzacu.zzcny)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzavu(this)));
        }
        return this.zzdsd.get();
    }

    private final boolean zza(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception e) {
                zza(e, "getInstance", z);
                return false;
            }
        }
        return true;
    }

    private final void zza(final String str, final zzavw zzavwVar) {
        synchronized (this.zzdsm) {
            FutureTask futureTask = new FutureTask(new Runnable(this, zzavwVar, str) { // from class: com.google.android.gms.internal.ads.zzavk
                private final zzavg zzdsp;
                private final zzavw zzdsq;
                private final String zzdsr;

                {
                    this.zzdsp = this;
                    this.zzdsq = zzavwVar;
                    this.zzdsr = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdsp.zza(this.zzdsq, this.zzdsr);
                }
            }, null);
            if (this.zzdsm.get() != null) {
                futureTask.run();
            } else {
                this.zzdsn.add(futureTask);
            }
        }
    }

    private final <T> Future<T> zza(final String str, final zzavv<T> zzavvVar) {
        FutureTask futureTask;
        synchronized (this.zzdsm) {
            futureTask = new FutureTask(new Callable(this, zzavvVar, str) { // from class: com.google.android.gms.internal.ads.zzavl
                private final zzavg zzdsp;
                private final String zzdsr;
                private final zzavv zzdss;

                {
                    this.zzdsp = this;
                    this.zzdss = zzavvVar;
                    this.zzdsr = str;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzdsp.zza(this.zzdss, this.zzdsr);
                }
            });
            if (this.zzdsm.get() != null) {
                zzui().submit(futureTask);
            } else {
                this.zzdsn.add(futureTask);
            }
        }
        return futureTask;
    }

    private final <T> T zza(String str, T t, zzavv<T> zzavvVar) {
        synchronized (this.zzdsm) {
            if (this.zzdsm.get() != null) {
                try {
                    return zzavvVar.zzb(this.zzdsm.get());
                } catch (Exception e) {
                    zza(e, str, false);
                }
            }
            return t;
        }
    }

    final /* synthetic */ Object zza(zzavv zzavvVar, String str) throws Exception {
        try {
            return zzavvVar.zzb(this.zzdsm.get());
        } catch (Exception e) {
            zza(e, str, false);
            throw e;
        }
    }

    final /* synthetic */ void zza(zzavw zzavwVar, String str) {
        if (this.zzdsm.get() != null) {
            try {
                zzavwVar.zza(this.zzdsm.get());
            } catch (Exception e) {
                zza(e, str, false);
            }
        }
    }

    final /* synthetic */ String zzaf(Context context) throws Exception {
        return (String) zza("getAppInstanceId", context);
    }
}
