package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.scene.poll.ScenePollPlayView;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzdd extends zzf {

    @VisibleForTesting
    protected zzdx zzpf;
    private zzda zzpg;
    private final Set<zzdb> zzph;
    private boolean zzpi;
    private final AtomicReference<String> zzpj;

    @VisibleForTesting
    protected boolean zzpk;

    protected zzdd(zzby zzbyVar) {
        super(zzbyVar);
        this.zzph = new CopyOnWriteArraySet();
        this.zzpk = true;
        this.zzpj = new AtomicReference<>();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzak() {
        return false;
    }

    public final void zzeu() {
        if (getContext().getApplicationContext() instanceof Application) {
            ((Application) getContext().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zzpf);
        }
    }

    public final Boolean zzev() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzac().zza(atomicReference, ScenePollPlayView.POLL_COUNT_DOWN_MS, "boolean test flag value", new zzde(this, atomicReference));
    }

    public final String zzew() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzac().zza(atomicReference, ScenePollPlayView.POLL_COUNT_DOWN_MS, "String test flag value", new zzdo(this, atomicReference));
    }

    public final Long zzex() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzac().zza(atomicReference, ScenePollPlayView.POLL_COUNT_DOWN_MS, "long test flag value", new zzdq(this, atomicReference));
    }

    public final Integer zzey() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzac().zza(atomicReference, ScenePollPlayView.POLL_COUNT_DOWN_MS, "int test flag value", new zzdr(this, atomicReference));
    }

    public final Double zzez() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzac().zza(atomicReference, ScenePollPlayView.POLL_COUNT_DOWN_MS, "double test flag value", new zzds(this, atomicReference));
    }

    public final void setMeasurementEnabled(boolean z) {
        zzah();
        zzo();
        zzac().zza(new zzdt(this, z));
    }

    public final void zza(boolean z) {
        zzah();
        zzo();
        zzac().zza(new zzdu(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg(boolean z) throws IllegalStateException {
        zzq();
        zzo();
        zzah();
        zzad().zzdh().zza("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzae().setMeasurementEnabled(z);
        zzfa();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzfa() throws IllegalStateException {
        if (zzaf().zze(zzt().zzan(), zzal.zzin)) {
            zzq();
            String strZzed = zzae().zzlp.zzed();
            if (strZzed != null) {
                if ("unset".equals(strZzed)) {
                    zza("app", "_npa", (Object) null, zzz().currentTimeMillis());
                } else {
                    zza("app", "_npa", Long.valueOf("true".equals(strZzed) ? 1L : 0L), zzz().currentTimeMillis());
                }
            }
        }
        if (zzaf().zzs(zzt().zzan()) && this.zzl.isEnabled() && this.zzpk) {
            zzad().zzdh().zzaq("Recording app launch after enabling measurement for the first time (FE)");
            zzfb();
        } else {
            zzad().zzdh().zzaq("Updating Scion state (FE)");
            zzu().zzfe();
        }
    }

    public final void setMinimumSessionDuration(long j) throws IllegalStateException {
        zzo();
        zzac().zza(new zzdv(this, j));
    }

    public final void setSessionTimeoutDuration(long j) throws IllegalStateException {
        zzo();
        zzac().zza(new zzdw(this, j));
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        logEvent(str, str2, bundle, false, true, zzz().currentTimeMillis());
    }

    public final void logEvent(String str, String str2, Bundle bundle) {
        logEvent(str, str2, bundle, true, true, zzz().currentTimeMillis());
    }

    final void zza(String str, String str2, Bundle bundle) throws IllegalStateException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        zzo();
        zzq();
        zza(str, str2, zzz().currentTimeMillis(), bundle);
    }

    final void zza(String str, String str2, long j, Bundle bundle) throws IllegalStateException, IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        zzo();
        zzq();
        zza(str, str2, j, bundle, true, this.zzpg == null || zzgd.zzbs(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r28, java.lang.String r29, long r30, android.os.Bundle r32, boolean r33, boolean r34, boolean r35, java.lang.String r36) throws java.lang.IllegalStateException, java.lang.IllegalAccessException, java.lang.ClassNotFoundException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzdd.zza(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zzo();
        zzb(str == null ? "app" : str, str2, j, bundle == null ? new Bundle() : bundle, z2, !z2 || this.zzpg == null || zzgd.zzbs(str2), !z, null);
    }

    private final void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) throws IllegalStateException {
        zzac().zza(new zzdf(this, str, str2, j, zzgd.zzh(bundle), z, z2, z3, str3));
    }

    public final void zzb(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzz().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j) throws IllegalStateException {
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        int iZzbo = 6;
        if (z) {
            iZzbo = zzab().zzbo(str2);
        } else {
            zzgd zzgdVarZzab = zzab();
            if (zzgdVarZzab.zzp("user property", str2)) {
                if (!zzgdVarZzab.zza("user property", zzcz.zzpc, str2)) {
                    iZzbo = 15;
                } else if (zzgdVarZzab.zza("user property", 24, str2)) {
                    iZzbo = 0;
                }
            }
        }
        if (iZzbo != 0) {
            zzab();
            this.zzl.zzab().zza(iZzbo, "_ev", zzgd.zza(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj != null) {
            int iZzc = zzab().zzc(str2, obj);
            if (iZzc != 0) {
                zzab();
                this.zzl.zzab().zza(iZzc, "_ev", zzgd.zza(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            } else {
                Object objZzd = zzab().zzd(str2, obj);
                if (objZzd != null) {
                    zza(str3, str2, j, objZzd);
                    return;
                }
                return;
            }
        }
        zza(str3, str2, j, (Object) null);
    }

    private final void zza(String str, String str2, long j, Object obj) throws IllegalStateException {
        zzac().zza(new zzdg(this, str, str2, obj, j));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) throws java.lang.IllegalStateException {
        /*
            r8 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r9)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r10)
            r8.zzq()
            r8.zzo()
            r8.zzah()
            com.google.android.gms.measurement.internal.zzt r0 = r8.zzaf()
            com.google.android.gms.measurement.internal.zzap r1 = r8.zzt()
            java.lang.String r1 = r1.zzan()
            com.google.android.gms.measurement.internal.zzal$zza<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzal.zzin
            boolean r0 = r0.zze(r1, r2)
            java.lang.String r1 = "_npa"
            if (r0 == 0) goto L79
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L79
            boolean r0 = r11 instanceof java.lang.String
            if (r0 == 0) goto L68
            r0 = r11
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L68
            java.util.Locale r10 = java.util.Locale.ENGLISH
            java.lang.String r10 = r0.toLowerCase(r10)
            java.lang.String r11 = "false"
            boolean r10 = r11.equals(r10)
            r2 = 1
            if (r10 == 0) goto L4c
            r4 = r2
            goto L4e
        L4c:
            r4 = 0
        L4e:
            java.lang.Long r10 = java.lang.Long.valueOf(r4)
            com.google.android.gms.measurement.internal.zzbf r0 = r8.zzae()
            com.google.android.gms.measurement.internal.zzbk r0 = r0.zzlp
            long r4 = r10.longValue()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 != 0) goto L63
            java.lang.String r11 = "true"
        L63:
            r0.zzav(r11)
            r6 = r10
            goto L77
        L68:
            if (r11 != 0) goto L79
            com.google.android.gms.measurement.internal.zzbf r10 = r8.zzae()
            com.google.android.gms.measurement.internal.zzbk r10 = r10.zzlp
            java.lang.String r0 = "unset"
            r10.zzav(r0)
            r6 = r11
        L77:
            r3 = r1
            goto L7b
        L79:
            r3 = r10
            r6 = r11
        L7b:
            com.google.android.gms.measurement.internal.zzby r10 = r8.zzl
            boolean r10 = r10.isEnabled()
            if (r10 != 0) goto L91
            com.google.android.gms.measurement.internal.zzau r9 = r8.zzad()
            com.google.android.gms.measurement.internal.zzaw r9 = r9.zzdh()
            java.lang.String r10 = "User property not set since app measurement is disabled"
            r9.zzaq(r10)
            return
        L91:
            com.google.android.gms.measurement.internal.zzby r10 = r8.zzl
            boolean r10 = r10.zzet()
            if (r10 != 0) goto L9a
            return
        L9a:
            com.google.android.gms.measurement.internal.zzau r10 = r8.zzad()
            com.google.android.gms.measurement.internal.zzaw r10 = r10.zzdh()
            com.google.android.gms.measurement.internal.zzas r11 = r8.zzaa()
            java.lang.String r11 = r11.zzal(r3)
            java.lang.String r0 = "Setting user property (FE)"
            r10.zza(r0, r11, r6)
            com.google.android.gms.measurement.internal.zzga r10 = new com.google.android.gms.measurement.internal.zzga
            r2 = r10
            r4 = r12
            r7 = r9
            r2.<init>(r3, r4, r6, r7)
            com.google.android.gms.measurement.internal.zzeg r9 = r8.zzu()
            r9.zzb(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzdd.zza(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final List<zzga> zzh(boolean z) {
        zzo();
        zzah();
        zzad().zzdh().zzaq("Fetching user attributes (FE)");
        if (zzac().zzef()) {
            zzad().zzda().zzaq("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzq.isMainThread()) {
            zzad().zzda().zzaq("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzl.zzac().zza(new zzdh(this, atomicReference, z));
            try {
                atomicReference.wait(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            } catch (InterruptedException e) {
                zzad().zzdd().zza("Interrupted waiting for get user properties", e);
            }
        }
        List<zzga> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzad().zzdd().zzaq("Timed out waiting for get user properties");
        return Collections.emptyList();
    }

    public final String zzj() {
        zzo();
        return this.zzpj.get();
    }

    public final String zzy(long j) throws IllegalStateException {
        if (zzac().zzef()) {
            zzad().zzda().zzaq("Cannot retrieve app instance id from analytics worker thread");
            return null;
        }
        if (zzq.isMainThread()) {
            zzad().zzda().zzaq("Cannot retrieve app instance id from main thread");
            return null;
        }
        long jElapsedRealtime = zzz().elapsedRealtime();
        String strZzz = zzz(StickerService.SHARED_REQUEST_INTERVAL);
        long jElapsedRealtime2 = zzz().elapsedRealtime() - jElapsedRealtime;
        return (strZzz != null || jElapsedRealtime2 >= StickerService.SHARED_REQUEST_INTERVAL) ? strZzz : zzz(StickerService.SHARED_REQUEST_INTERVAL - jElapsedRealtime2);
    }

    final void zzbi(String str) {
        this.zzpj.set(str);
    }

    private final String zzz(long j) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            zzac().zza(new zzdi(this, atomicReference));
            try {
                atomicReference.wait(j);
            } catch (InterruptedException unused) {
                zzad().zzdd().zzaq("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    public final void resetAnalyticsData(long j) throws IllegalStateException {
        zzbi(null);
        zzac().zza(new zzdj(this, j));
    }

    public final void zzfb() {
        zzq();
        zzo();
        zzah();
        if (this.zzl.zzet()) {
            zzu().zzfb();
            this.zzpk = false;
            String strZzdx = zzae().zzdx();
            if (TextUtils.isEmpty(strZzdx)) {
                return;
            }
            zzy().zzah();
            if (strZzdx.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", strZzdx);
            logEvent("auto", "_ou", bundle);
        }
    }

    public final void zza(zzda zzdaVar) {
        zzda zzdaVar2;
        zzq();
        zzo();
        zzah();
        if (zzdaVar != null && zzdaVar != (zzdaVar2 = this.zzpg)) {
            Preconditions.checkState(zzdaVar2 == null, "EventInterceptor already set.");
        }
        this.zzpg = zzdaVar;
    }

    public final void zza(zzdb zzdbVar) {
        zzo();
        zzah();
        Preconditions.checkNotNull(zzdbVar);
        if (this.zzph.add(zzdbVar)) {
            return;
        }
        zzad().zzdd().zzaq("OnEventListener already registered");
    }

    public final void zzb(zzdb zzdbVar) {
        zzo();
        zzah();
        Preconditions.checkNotNull(zzdbVar);
        if (this.zzph.remove(zzdbVar)) {
            return;
        }
        zzad().zzdd().zzaq("OnEventListener had not been registered");
    }

    public final void setConditionalUserProperty(Bundle bundle) {
        setConditionalUserProperty(bundle, zzz().currentTimeMillis());
    }

    public final void setConditionalUserProperty(Bundle bundle, long j) throws IllegalStateException {
        Preconditions.checkNotNull(bundle);
        zzo();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzad().zzdd().zzaq("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        zza(bundle2, j);
    }

    public final void zzd(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString("app_id"));
        zzn();
        zza(new Bundle(bundle), zzz().currentTimeMillis());
    }

    private final void zza(Bundle bundle, long j) throws IllegalStateException {
        Preconditions.checkNotNull(bundle);
        zzcw.zza(bundle, "app_id", String.class, null);
        zzcw.zza(bundle, "origin", String.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzcw.zza(bundle, "value", Object.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzcw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle.get("value");
        if (zzab().zzbo(string) != 0) {
            zzad().zzda().zza("Invalid conditional user property name", zzaa().zzan(string));
            return;
        }
        if (zzab().zzc(string, obj) != 0) {
            zzad().zzda().zza("Invalid conditional user property value", zzaa().zzan(string), obj);
            return;
        }
        Object objZzd = zzab().zzd(string, obj);
        if (objZzd == null) {
            zzad().zzda().zza("Unable to normalize conditional user property value", zzaa().zzan(string), obj);
            return;
        }
        zzcw.zza(bundle, objZzd);
        long j2 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) && (j2 > 15552000000L || j2 < 1)) {
            zzad().zzda().zza("Invalid conditional user property timeout", zzaa().zzan(string), Long.valueOf(j2));
            return;
        }
        long j3 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        if (j3 > 15552000000L || j3 < 1) {
            zzad().zzda().zza("Invalid conditional user property time to live", zzaa().zzan(string), Long.valueOf(j3));
        } else {
            zzac().zza(new zzdl(this, bundle));
        }
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzo();
        zza((String) null, str, str2, bundle);
    }

    public final void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zzn();
        zza(str, str2, str3, bundle);
    }

    private final void zza(String str, String str2, String str3, Bundle bundle) throws IllegalStateException {
        long jCurrentTimeMillis = zzz().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, jCurrentTimeMillis);
        if (str3 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str3);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzac().zza(new zzdm(this, bundle2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(Bundle bundle) throws IllegalStateException {
        zzq();
        zzah();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        if (!this.zzl.isEnabled()) {
            zzad().zzdh().zzaq("Conditional property not sent since collection is disabled");
            return;
        }
        zzga zzgaVar = new zzga(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), bundle.getString("origin"));
        try {
            zzaj zzajVarZza = zzab().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false);
            zzu().zzd(new zzr(bundle.getString("app_id"), bundle.getString("origin"), zzgaVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzab().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzajVarZza, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzab().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf(Bundle bundle) throws IllegalStateException {
        zzq();
        zzah();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (!this.zzl.isEnabled()) {
            zzad().zzdh().zzaq("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzu().zzd(new zzr(bundle.getString("app_id"), bundle.getString("origin"), new zzga(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzab().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, false)));
        } catch (IllegalArgumentException unused) {
        }
    }

    public final ArrayList<Bundle> zzn(String str, String str2) {
        zzo();
        return zzf(null, str, str2);
    }

    public final ArrayList<Bundle> zze(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzn();
        return zzf(str, str2, str3);
    }

    @VisibleForTesting
    private final ArrayList<Bundle> zzf(String str, String str2, String str3) throws IllegalStateException {
        if (zzac().zzef()) {
            zzad().zzda().zzaq("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (zzq.isMainThread()) {
            zzad().zzda().zzaq("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzl.zzac().zza(new zzdn(this, atomicReference, str, str2, str3));
            try {
                atomicReference.wait(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            } catch (InterruptedException e) {
                zzad().zzdd().zza("Interrupted waiting for get conditional user properties", str, e);
            }
        }
        List list = (List) atomicReference.get();
        if (list == null) {
            zzad().zzdd().zza("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
        return zzgd.zzc((List<zzr>) list);
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzo();
        return zzb((String) null, str, str2, z);
    }

    public final Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zzn();
        return zzb(str, str2, str3, z);
    }

    @VisibleForTesting
    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) throws IllegalStateException {
        if (zzac().zzef()) {
            zzad().zzda().zzaq("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (zzq.isMainThread()) {
            zzad().zzda().zzaq("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzl.zzac().zza(new zzdp(this, atomicReference, str, str2, str3, z));
            try {
                atomicReference.wait(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            } catch (InterruptedException e) {
                zzad().zzdd().zza("Interrupted waiting for get user properties", e);
            }
        }
        List<zzga> list = (List) atomicReference.get();
        if (list == null) {
            zzad().zzdd().zzaq("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzga zzgaVar : list) {
            arrayMap.put(zzgaVar.name, zzgaVar.getValue());
        }
        return arrayMap;
    }

    public final String getCurrentScreenName() {
        zzec zzecVarZzfd = this.zzl.zzv().zzfd();
        if (zzecVarZzfd != null) {
            return zzecVarZzfd.zzpu;
        }
        return null;
    }

    public final String getCurrentScreenClass() {
        zzec zzecVarZzfd = this.zzl.zzv().zzfd();
        if (zzecVarZzfd != null) {
            return zzecVarZzfd.zzpv;
        }
        return null;
    }

    public final String getGmpAppId() throws IllegalStateException {
        if (this.zzl.zzem() != null) {
            return this.zzl.zzem();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e) {
            this.zzl.zzad().zzda().zza("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdd zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzap zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeg zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzed zzv() {
        return super.zzv();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaq zzw() {
        return super.zzw();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzfj zzx() {
        return super.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
