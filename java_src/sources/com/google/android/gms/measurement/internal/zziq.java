package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zznp;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zzoh;
import com.google.android.gms.internal.measurement.zzoi;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzps;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.util.concurrent.g;
import com.google.common.util.concurrent.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class zziq extends zze {

    @VisibleForTesting
    protected zzjx zza;
    final zzu zzb;
    private zzim zzc;
    private final Set<zzil> zzd;
    private boolean zze;
    private final AtomicReference<String> zzf;
    private final Object zzg;
    private boolean zzh;
    private PriorityQueue<zzmh> zzi;

    @GuardedBy
    private zzih zzj;
    private final AtomicLong zzk;
    private long zzl;

    @VisibleForTesting
    private boolean zzm;
    private zzaw zzn;
    private final zznf zzo;

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }

    @TargetApi(30)
    private final PriorityQueue<zzmh> zzao() {
        if (this.zzi == null) {
            c.a();
            this.zzi = b.a(Comparator.comparing(new Function() { // from class: com.google.android.gms.measurement.internal.zzip
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(((zzmh) obj).zzb);
                }
            }, new Comparator() { // from class: com.google.android.gms.measurement.internal.zzis
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return (((Long) obj).longValue() > ((Long) obj2).longValue() ? 1 : (((Long) obj).longValue() == ((Long) obj2).longValue() ? 0 : -1));
                }
            }));
        }
        return this.zzi;
    }

    public final Boolean zzaa() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzl().zza(atomicReference, 15000L, "boolean test flag value", new zzja(this, atomicReference));
    }

    public final Double zzab() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzl().zza(atomicReference, 15000L, "double test flag value", new zzju(this, atomicReference));
    }

    public final Integer zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzl().zza(atomicReference, 15000L, "int test flag value", new zzjr(this, atomicReference));
    }

    public final Long zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzl().zza(atomicReference, 15000L, "long test flag value", new zzjs(this, atomicReference));
    }

    public final String zzae() {
        return this.zzf.get();
    }

    public final String zzaf() {
        zzki zzkiVarZzaa = this.zzu.zzq().zzaa();
        if (zzkiVarZzaa != null) {
            return zzkiVarZzaa.zzb;
        }
        return null;
    }

    public final String zzag() {
        zzki zzkiVarZzaa = this.zzu.zzq().zzaa();
        if (zzkiVarZzaa != null) {
            return zzkiVarZzaa.zza;
        }
        return null;
    }

    public final String zzah() {
        if (this.zzu.zzu() != null) {
            return this.zzu.zzu();
        }
        try {
            return new zzgz(zza(), this.zzu.zzx()).zza("google_app_id");
        } catch (IllegalStateException e) {
            this.zzu.zzj().zzg().zza("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    public final String zzai() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzl().zza(atomicReference, 15000L, "String test flag value", new zzjj(this, atomicReference));
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @WorkerThread
    final void zzc(String str, String str2, Bundle bundle) {
        zzt();
        zza(str, str2, zzb().currentTimeMillis(), bundle);
    }

    protected zziq(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzd = new CopyOnWriteArraySet();
        this.zzg = new Object();
        this.zzh = false;
        this.zzm = true;
        this.zzo = new zzjp(this);
        this.zzf = new AtomicReference<>();
        this.zzj = zzih.zza;
        this.zzl = -1L;
        this.zzk = new AtomicLong(0L);
        this.zzb = new zzu(zzhfVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzap() {
        long j6;
        zzt();
        String strZza = zzk().zzh.zza();
        if (strZza != null) {
            if ("unset".equals(strZza)) {
                zza("app", "_npa", (Object) null, zzb().currentTimeMillis());
            } else {
                if ("true".equals(strZza)) {
                    j6 = 1;
                } else {
                    j6 = 0;
                }
                zza("app", "_npa", Long.valueOf(j6), zzb().currentTimeMillis());
            }
        }
        if (this.zzu.zzac() && this.zzm) {
            zzj().zzc().zza("Recording app launch after enabling measurement for the first time (FE)");
            zzaj();
            if (zzoh.zza() && zze().zza(zzbi.zzbn)) {
                zzp().zza.zza();
            }
            zzl().zzb(new zzje(this));
            return;
        }
        zzj().zzc().zza("Updating Scion state (FE)");
        zzo().zzag();
    }

    @WorkerThread
    public final void zzaj() {
        Boolean boolZzg;
        zzt();
        zzu();
        if (!this.zzu.zzaf()) {
            return;
        }
        if (zze().zza(zzbi.zzbh) && (boolZzg = zze().zzg("google_analytics_deferred_deep_link_enabled")) != null && boolZzg.booleanValue()) {
            zzj().zzc().zza("Deferred Deep Link feature enabled.");
            zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziv
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzam();
                }
            });
        }
        zzo().zzac();
        this.zzm = false;
        String strZzv = zzk().zzv();
        if (!TextUtils.isEmpty(strZzv)) {
            zzf().zzab();
            if (!strZzv.equals(Build.VERSION.RELEASE)) {
                Bundle bundle = new Bundle();
                bundle.putString("_po", strZzv);
                zzc("auto", "_ou", bundle);
            }
        }
    }

    public final void zzak() {
        if ((zza().getApplicationContext() instanceof Application) && this.zza != null) {
            ((Application) zza().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
        }
    }

    final void zzal() {
        if (zzpg.zza() && zze().zza(zzbi.zzcg)) {
            if (zzl().zzg()) {
                zzj().zzg().zza("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (zzae.zza()) {
                zzj().zzg().zza("Cannot get trigger URIs from main thread");
                return;
            }
            zzu();
            zzj().zzp().zza("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzl().zza(atomicReference, 5000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzir
                @Override // java.lang.Runnable
                public final void run() {
                    zziq zziqVar = this.zza;
                    AtomicReference<List<zzmh>> atomicReference2 = atomicReference;
                    Bundle bundleZza = zziqVar.zzk().zzi.zza();
                    zzkp zzkpVarZzo = zziqVar.zzo();
                    if (bundleZza == null) {
                        bundleZza = new Bundle();
                    }
                    zzkpVarZzo.zza(atomicReference2, bundleZza);
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                zzj().zzg().zza("Timed out waiting for get trigger URIs");
            } else {
                zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zziu
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zza(list);
                    }
                });
            }
        }
    }

    @WorkerThread
    public final void zzam() {
        zzt();
        if (zzk().zzo.zza()) {
            zzj().zzc().zza("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long jZza = zzk().zzp.zza();
        zzk().zzp.zza(1 + jZza);
        if (jZza >= 5) {
            zzj().zzu().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            zzk().zzo.zza(true);
        } else {
            if (zznp.zza() && zze().zza(zzbi.zzcn)) {
                if (this.zzn == null) {
                    this.zzn = new zzjh(this, this.zzu);
                }
                this.zzn.zza(0L);
                return;
            }
            this.zzu.zzah();
        }
    }

    @TargetApi(30)
    @WorkerThread
    final void zzan() {
        zzmh zzmhVarPoll;
        MeasurementManagerFutures measurementManagerFuturesZzn;
        zzt();
        if (zzao().isEmpty() || this.zzh || (zzmhVarPoll = zzao().poll()) == null || (measurementManagerFuturesZzn = zzq().zzn()) == null) {
            return;
        }
        this.zzh = true;
        zzj().zzp().zza("Registering trigger URI", zzmhVarPoll.zza);
        k<l0> kVarD = measurementManagerFuturesZzn.d(Uri.parse(zzmhVarPoll.zza));
        if (kVarD == null) {
            this.zzh = false;
            zzao().add(zzmhVarPoll);
            return;
        }
        SparseArray<Long> sparseArrayZzg = zzk().zzg();
        sparseArrayZzg.put(zzmhVarPoll.zzc, Long.valueOf(zzmhVarPoll.zzb));
        zzgd zzgdVarZzk = zzk();
        int[] iArr = new int[sparseArrayZzg.size()];
        long[] jArr = new long[sparseArrayZzg.size()];
        for (int i10 = 0; i10 < sparseArrayZzg.size(); i10++) {
            iArr[i10] = sparseArrayZzg.keyAt(i10);
            jArr[i10] = sparseArrayZzg.valueAt(i10).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        zzgdVarZzk.zzi.zza(bundle);
        g.a(kVarD, new zzjc(this, zzmhVarPoll), new zziz(this));
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzb().currentTimeMillis());
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzaf zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzba zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfl zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzfo zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzfq zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzfr zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zzgd zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzgy zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zziq zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkh zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzkp zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzlx zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    private final void zzb(String str, String str2, long j6, Bundle bundle, boolean z6, boolean z10, boolean z11, String str3) {
        zzl().zzb(new zzjg(this, str, str2, j6, zznd.zza(bundle), z6, z10, z11, str3));
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (zzae.zza()) {
            zzj().zzg().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().zza(atomicReference, 5000L, "get conditional user properties", new zzjo(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            zzj().zzg().zza("Timed out waiting for get conditional user properties", null);
            return new ArrayList<>();
        }
        return zznd.zzb((List<zzad>) list);
    }

    public final void zzb(Bundle bundle) {
        zza(bundle, zzb().currentTimeMillis());
    }

    public final void zzb(zzil zzilVar) {
        zzu();
        Preconditions.checkNotNull(zzilVar);
        if (this.zzd.remove(zzilVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener had not been registered");
    }

    public final List<zznc> zza(boolean z6) {
        zzu();
        zzj().zzp().zza("Getting user properties (FE)");
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzae.zza()) {
            zzj().zzg().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().zza(atomicReference, 5000L, "get user properties", new zzji(this, atomicReference, z6));
        List<zznc> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzj().zzg().zza("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z6));
        return Collections.emptyList();
    }

    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (zzae.zza()) {
            zzj().zzg().zza("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().zza(atomicReference, 5000L, "get user properties", new zzjn(this, atomicReference, null, str, str2, z6));
        List<zznc> list = (List) atomicReference.get();
        if (list == null) {
            zzj().zzg().zza("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z6));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zznc zzncVar : list) {
            Object objZza = zzncVar.zza();
            if (objZza != null) {
                arrayMap.put(zzncVar.zza, objZza);
            }
        }
        return arrayMap;
    }

    static /* synthetic */ void zza(zziq zziqVar, zzih zzihVar, zzih zzihVar2) {
        zzih.zza zzaVar = zzih.zza.ANALYTICS_STORAGE;
        zzih.zza zzaVar2 = zzih.zza.AD_STORAGE;
        boolean zZza = zzihVar.zza(zzihVar2, zzaVar, zzaVar2);
        boolean zZzb = zzihVar.zzb(zzihVar2, zzaVar, zzaVar2);
        if (zZza || zZzb) {
            zziqVar.zzg().zzag();
        }
    }

    static /* synthetic */ void zza(zziq zziqVar, zzih zzihVar, long j6, boolean z6, boolean z10) {
        zziqVar.zzt();
        zziqVar.zzu();
        zzih zzihVarZzm = zziqVar.zzk().zzm();
        if (j6 <= zziqVar.zzl && zzih.zza(zzihVarZzm.zza(), zzihVar.zza())) {
            zziqVar.zzj().zzn().zza("Dropped out-of-date consent setting, proposed settings", zzihVar);
            return;
        }
        if (zziqVar.zzk().zza(zzihVar)) {
            zziqVar.zzl = j6;
            zziqVar.zzo().zza(z6);
            if (z10) {
                zziqVar.zzo().zza(new AtomicReference<>());
                return;
            }
            return;
        }
        zziqVar.zzj().zzn().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzihVar.zza()));
    }

    public final void zza(String str, String str2, Bundle bundle) {
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzl().zzb(new zzjl(this, bundle2));
    }

    final /* synthetic */ void zza(List list) {
        zzt();
        if (Build.VERSION.SDK_INT >= 30) {
            SparseArray<Long> sparseArrayZzg = zzk().zzg();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzmh zzmhVar = (zzmh) it.next();
                if (!sparseArrayZzg.contains(zzmhVar.zzc) || sparseArrayZzg.get(zzmhVar.zzc).longValue() < zzmhVar.zzb) {
                    zzao().add(zzmhVar);
                }
            }
            zzan();
        }
    }

    final /* synthetic */ void zza(Bundle bundle) {
        if (bundle == null) {
            zzk().zzt.zza(new Bundle());
            return;
        }
        Bundle bundleZza = zzk().zzt.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                zzq();
                if (zznd.zza(obj)) {
                    zzq();
                    zznd.zza(this.zzo, 27, (String) null, (String) null, 0);
                }
                zzj().zzv().zza("Invalid default event parameter type. Name, value", str, obj);
            } else if (zznd.zzg(str)) {
                zzj().zzv().zza("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                bundleZza.remove(str);
            } else if (zzq().zza("param", str, zze().zzb(this.zzu.zzh().zzad()), obj)) {
                zzq().zza(bundleZza, str, obj);
            }
        }
        zzq();
        if (zznd.zza(bundleZza, zze().zzg())) {
            zzq();
            zznd.zza(this.zzo, 26, (String) null, (String) null, 0);
            zzj().zzv().zza("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        zzk().zzt.zza(bundleZza);
        zzo().zza(bundleZza);
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z6, boolean z10, long j6) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (str2 != "screen_view" && (str2 == null || !str2.equals("screen_view"))) {
            zzb(str3, str2, j6, bundle2, z10, !z10 || this.zzc == null || zznd.zzg(str2), z6, null);
        } else {
            zzn().zza(bundle2, j6);
        }
    }

    public final void zza(String str, String str2, Bundle bundle, String str3) {
        zzs();
        zzb(str, str2, zzb().currentTimeMillis(), bundle, false, true, true, str3);
    }

    @WorkerThread
    final void zza(String str, String str2, long j6, Bundle bundle) {
        zzt();
        zza(str, str2, j6, bundle, true, this.zzc == null || zznd.zzg(str2), true, null);
    }

    @WorkerThread
    protected final void zza(String str, String str2, long j6, Bundle bundle, boolean z6, boolean z10, boolean z11, String str3) {
        boolean zZza;
        long j10;
        zziq zziqVar;
        String strTrim;
        int length;
        Class<?> cls;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzt();
        zzu();
        if (!this.zzu.zzac()) {
            zzj().zzc().zza("Event not sent since app measurement is disabled");
            return;
        }
        List<String> listZzaf = zzg().zzaf();
        if (listZzaf != null && !listZzaf.contains(str2)) {
            zzj().zzc().zza("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.zze) {
            this.zze = true;
            try {
                if (!this.zzu.zzag()) {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, zza().getClassLoader());
                } else {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                }
                try {
                    cls.getDeclaredMethod("initialize", Context.class).invoke(null, zza());
                } catch (Exception e) {
                    zzj().zzu().zza("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                zzj().zzn().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if (com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE.equals(str2)) {
            if (bundle.containsKey("gclid")) {
                zza("auto", "_lgclid", bundle.getString("gclid"), zzb().currentTimeMillis());
            }
            if (zzoi.zza() && zze().zza(zzbi.zzcs) && bundle.containsKey("gbraid")) {
                zza("auto", "_gbraid", bundle.getString("gbraid"), zzb().currentTimeMillis());
            }
        }
        if (z6 && zznd.zzj(str2)) {
            zzq().zza(bundle, zzk().zzt.zza());
        }
        if (!z11 && !"_iap".equals(str2)) {
            zznd zzndVarZzt = this.zzu.zzt();
            int i10 = 2;
            if (zzndVarZzt.zzc(NotificationCompat.CATEGORY_EVENT, str2)) {
                if (!zzndVarZzt.zza(NotificationCompat.CATEGORY_EVENT, zzii.zza, zzii.zzb, str2)) {
                    i10 = 13;
                } else if (zzndVarZzt.zza(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                    i10 = 0;
                }
            }
            if (i10 != 0) {
                zzj().zzh().zza("Invalid public event name. Event will not be logged (FE)", zzi().zza(str2));
                this.zzu.zzt();
                String strZza = zznd.zza(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.zzu.zzt();
                zznd.zza(this.zzo, i10, "_ev", strZza, length);
                return;
            }
        }
        zzki zzkiVarZza = zzn().zza(false);
        if (zzkiVarZza != null && !bundle.containsKey("_sc")) {
            zzkiVarZza.zzd = true;
        }
        zznd.zza(zzkiVarZza, bundle, z6 && !z11);
        boolean zEquals = "am".equals(str);
        boolean zZzg = zznd.zzg(str2);
        if (z6 && this.zzc != null && !zZzg && !zEquals) {
            zzj().zzc().zza("Passing event to registered event handler (FE)", zzi().zza(str2), zzi().zza(bundle));
            Preconditions.checkNotNull(this.zzc);
            this.zzc.interceptEvent(str, str2, bundle, j6);
            return;
        }
        if (this.zzu.zzaf()) {
            int iZza = zzq().zza(str2);
            if (iZza != 0) {
                zzj().zzh().zza("Invalid event name. Event will not be logged (FE)", zzi().zza(str2));
                zzq();
                String strZza2 = zznd.zza(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.zzu.zzt();
                zznd.zza(this.zzo, str3, iZza, "_ev", strZza2, length);
                return;
            }
            Bundle bundleZza = zzq().zza(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z11);
            Preconditions.checkNotNull(bundleZza);
            if (zzn().zza(false) != null && "_ae".equals(str2)) {
                zzmd zzmdVar = zzp().zzb;
                long jElapsedRealtime = zzmdVar.zzb.zzb().elapsedRealtime();
                long j11 = jElapsedRealtime - zzmdVar.zza;
                zzmdVar.zza = jElapsedRealtime;
                if (j11 > 0) {
                    zzq().zza(bundleZza, j11);
                }
            }
            if (zznv.zza() && zze().zza(zzbi.zzbm)) {
                if (!"auto".equals(str) && "_ssr".equals(str2)) {
                    zznd zzndVarZzq = zzq();
                    String string = bundleZza.getString("_ffr");
                    if (Strings.isEmptyOrWhitespace(string)) {
                        strTrim = null;
                    } else {
                        strTrim = string != null ? string.trim() : string;
                    }
                    if (zzng.zza(strTrim, zzndVarZzq.zzk().zzq.zza())) {
                        zzndVarZzq.zzj().zzc().zza("Not logging duplicate session_start_with_rollout event");
                        return;
                    }
                    zzndVarZzq.zzk().zzq.zza(strTrim);
                } else if ("_ae".equals(str2)) {
                    String strZza3 = zzq().zzk().zzq.zza();
                    if (!TextUtils.isEmpty(strZza3)) {
                        bundleZza.putString("_ffr", strZza3);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleZza);
            if (zze().zza(zzbi.zzcj)) {
                zZza = zzp().zzaa();
            } else {
                zZza = zzk().zzn.zza();
            }
            if (zzk().zzk.zza() > 0 && zzk().zza(j6) && zZza) {
                zzj().zzp().zza("Current session is expired, remove the session number, ID, and engagement time");
                j10 = 0;
                zza("auto", "_sid", (Object) null, zzb().currentTimeMillis());
                zza("auto", "_sno", (Object) null, zzb().currentTimeMillis());
                zza("auto", "_se", (Object) null, zzb().currentTimeMillis());
                zzk().zzl.zza(0L);
            } else {
                j10 = 0;
            }
            if (bundleZza.getLong("extend_session", j10) == 1) {
                zzj().zzp().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                zziqVar = this;
                zziqVar.zzu.zzs().zza.zza(j6, true);
            } else {
                zziqVar = this;
            }
            ArrayList arrayList2 = new ArrayList(bundleZza.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList2.get(i11);
                i11++;
                String str4 = (String) obj;
                if (str4 != null) {
                    zzq();
                    Bundle[] bundleArrZzb = zznd.zzb(bundleZza.get(str4));
                    if (bundleArrZzb != null) {
                        bundleZza.putParcelableArray(str4, bundleArrZzb);
                    }
                }
            }
            int i12 = 0;
            while (i12 < arrayList.size()) {
                Bundle bundleZzb = (Bundle) arrayList.get(i12);
                String str5 = i12 != 0 ? "_ep" : str2;
                bundleZzb.putString("_o", str);
                if (z10) {
                    bundleZzb = zzq().zzb(bundleZzb);
                }
                Bundle bundle2 = bundleZzb;
                zzo().zza(new zzbg(str5, new zzbb(bundle2), str, j6), str3);
                if (!zEquals) {
                    Iterator<zzil> it = zziqVar.zzd.iterator();
                    while (it.hasNext()) {
                        it.next().onEvent(str, str2, new Bundle(bundle2), j6);
                    }
                }
                i12++;
            }
            if (zzn().zza(false) == null || !"_ae".equals(str2)) {
                return;
            }
            zzp().zza(true, true, zzb().elapsedRealtime());
        }
    }

    public final void zza(zzil zzilVar) {
        zzu();
        Preconditions.checkNotNull(zzilVar);
        if (this.zzd.add(zzilVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener already registered");
    }

    final void zza(long j6, boolean z6) {
        zzt();
        zzu();
        zzj().zzc().zza("Resetting analytics data (FE)");
        zzlx zzlxVarZzp = zzp();
        zzlxVarZzp.zzt();
        zzlxVarZzp.zzb.zza();
        if (zzps.zza() && zze().zza(zzbi.zzbs)) {
            zzg().zzag();
        }
        boolean zZzac = this.zzu.zzac();
        zzgd zzgdVarZzk = zzk();
        zzgdVarZzk.zzc.zza(j6);
        if (!TextUtils.isEmpty(zzgdVarZzk.zzk().zzq.zza())) {
            zzgdVarZzk.zzq.zza(null);
        }
        if (zzoh.zza() && zzgdVarZzk.zze().zza(zzbi.zzbn)) {
            zzgdVarZzk.zzk.zza(0L);
        }
        zzgdVarZzk.zzl.zza(0L);
        if (!zzgdVarZzk.zze().zzv()) {
            zzgdVarZzk.zzb(!zZzac);
        }
        zzgdVarZzk.zzr.zza(null);
        zzgdVarZzk.zzs.zza(0L);
        zzgdVarZzk.zzt.zza(null);
        if (z6) {
            zzo().zzaf();
        }
        if (zzoh.zza() && zze().zza(zzbi.zzbn)) {
            zzp().zza.zza();
        }
        this.zzm = !zZzac;
    }

    private final void zza(String str, String str2, long j6, Object obj) {
        zzl().zzb(new zzjf(this, str, str2, obj, j6));
    }

    final void zza(String str) {
        this.zzf.set(str);
    }

    public final void zza(Bundle bundle, long j6) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzj().zzu().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzie.zza(bundle2, "app_id", String.class, null);
        zzie.zza(bundle2, "origin", String.class, null);
        zzie.zza(bundle2, "name", String.class, null);
        zzie.zza(bundle2, "value", Object.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzie.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j6);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (zzq().zzb(string) != 0) {
            zzj().zzg().zza("Invalid conditional user property name", zzi().zzc(string));
            return;
        }
        if (zzq().zza(string, obj) != 0) {
            zzj().zzg().zza("Invalid conditional user property value", zzi().zzc(string), obj);
            return;
        }
        Object objZzc = zzq().zzc(string, obj);
        if (objZzc == null) {
            zzj().zzg().zza("Unable to normalize conditional user property value", zzi().zzc(string), obj);
            return;
        }
        zzie.zza(bundle2, objZzc);
        long j10 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) && (j10 > 15552000000L || j10 < 1)) {
            zzj().zzg().zza("Invalid conditional user property timeout", zzi().zzc(string), Long.valueOf(j10));
            return;
        }
        long j11 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        if (j11 <= 15552000000L && j11 >= 1) {
            zzl().zzb(new zzjm(this, bundle2));
        } else {
            zzj().zzg().zza("Invalid conditional user property time to live", zzi().zzc(string), Long.valueOf(j11));
        }
    }

    public final void zza(zzih zzihVar, long j6) {
        zzih zzihVar2;
        boolean z6;
        zzih zzihVar3;
        boolean z10;
        boolean zZzc;
        zzu();
        int iZza = zzihVar.zza();
        if (iZza != -10 && zzihVar.zzc() == null && zzihVar.zzd() == null) {
            zzj().zzv().zza("Discarding empty consent settings");
            return;
        }
        synchronized (this.zzg) {
            try {
                zzihVar2 = this.zzj;
                z6 = false;
                if (zzih.zza(iZza, zzihVar2.zza())) {
                    zZzc = zzihVar.zzc(this.zzj);
                    if (zzihVar.zzh() && !this.zzj.zzh()) {
                        z6 = true;
                    }
                    zzih zzihVarZzb = zzihVar.zzb(this.zzj);
                    this.zzj = zzihVarZzb;
                    zzihVar3 = zzihVarZzb;
                    z10 = z6;
                    z6 = true;
                } else {
                    zzihVar3 = zzihVar;
                    z10 = false;
                    zZzc = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z6) {
            zzj().zzn().zza("Ignoring lower-priority consent settings, proposed settings", zzihVar3);
            return;
        }
        long andIncrement = this.zzk.getAndIncrement();
        if (zZzc) {
            zza((String) null);
            zzl().zzc(new zzjv(this, zzihVar3, j6, andIncrement, z10, zzihVar2));
            return;
        }
        zzjy zzjyVar = new zzjy(this, zzihVar3, andIncrement, z10, zzihVar2);
        if (iZza != 30 && iZza != -10) {
            zzl().zzb(zzjyVar);
        } else {
            zzl().zzc(zzjyVar);
        }
    }

    @VisibleForTesting
    final void zza(Bundle bundle, int i10, long j6) {
        zzu();
        String strZza = zzih.zza(bundle);
        if (strZza != null) {
            zzj().zzv().zza("Ignoring invalid consent setting", strZza);
            zzj().zzv().zza("Valid consent values are 'granted', 'denied'");
        }
        zzih zzihVarZza = zzih.zza(bundle, i10);
        if (zznp.zza() && zze().zza(zzbi.zzcl)) {
            if (zzihVarZza.zzi()) {
                zza(zzihVarZza, j6);
            }
            zzay zzayVarZza = zzay.zza(bundle, i10);
            if (zzayVarZza.zzg()) {
                zza(zzayVarZza);
            }
            Boolean boolZza = zzay.zza(bundle);
            if (boolZza != null) {
                zza("app", "allow_personalized_ads", (Object) boolZza.toString(), false);
                return;
            }
            return;
        }
        zza(zzihVarZza, j6);
    }

    final void zza(zzay zzayVar) {
        zzl().zzb(new zzjw(this, zzayVar));
    }

    @WorkerThread
    public final void zza(zzim zzimVar) {
        zzim zzimVar2;
        zzt();
        zzu();
        if (zzimVar != null && zzimVar != (zzimVar2 = this.zzc)) {
            Preconditions.checkState(zzimVar2 == null, "EventInterceptor already set.");
        }
        this.zzc = zzimVar;
    }

    public final void zza(Boolean bool) {
        zzu();
        zzl().zzb(new zzjt(this, bool));
    }

    @WorkerThread
    final void zza(zzih zzihVar) {
        zzt();
        boolean z6 = (zzihVar.zzh() && zzihVar.zzg()) || zzo().zzaj();
        if (z6 != this.zzu.zzad()) {
            this.zzu.zzb(z6);
            Boolean boolZzp = zzk().zzp();
            if (!z6 || boolZzp == null || boolZzp.booleanValue()) {
                zza(Boolean.valueOf(z6), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(Boolean bool, boolean z6) {
        zzt();
        zzu();
        zzj().zzc().zza("Setting app measurement enabled (FE)", bool);
        zzk().zza(bool);
        if (z6) {
            zzk().zzb(bool);
        }
        if (this.zzu.zzad() || !(bool == null || bool.booleanValue())) {
            zzap();
        }
    }

    public final void zza(String str, String str2, Object obj, boolean z6) {
        zza(str, str2, obj, z6, zzb().currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public final void zza(String str, String str2, Object obj, boolean z6, long j6) {
        int iZzb;
        int length;
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        if (z6) {
            iZzb = zzq().zzb(str2);
        } else {
            zznd zzndVarZzq = zzq();
            if (!zzndVarZzq.zzc("user property", str2)) {
                iZzb = 6;
            } else if (!zzndVarZzq.zza("user property", zzij.zza, str2)) {
                iZzb = 15;
            } else if (zzndVarZzq.zza("user property", 24, str2)) {
                iZzb = 0;
            } else {
                iZzb = 6;
            }
        }
        if (iZzb != 0) {
            zzq();
            String strZza = zznd.zza(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            this.zzu.zzt();
            zznd.zza(this.zzo, iZzb, "_ev", strZza, length);
            return;
        }
        if (obj != null) {
            int iZza = zzq().zza(str2, obj);
            if (iZza != 0) {
                zzq();
                String strZza2 = zznd.zza(str2, 24, true);
                length = ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0;
                this.zzu.zzt();
                zznd.zza(this.zzo, iZza, "_ev", strZza2, length);
                return;
            }
            Object objZzc = zzq().zzc(str2, obj);
            if (objZzc != null) {
                zza(str3, str2, j6, objZzc);
                return;
            }
            return;
        }
        zza(str3, str2, j6, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    /* JADX WARN: Code duplicated, block: B:19:0x0060  */
    @WorkerThread
    final void zza(String str, String str2, Object obj, long j6) {
        String str3;
        Object obj2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzu();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    Long lValueOf = Long.valueOf("false".equals(str4.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    zzk().zzh.zza(lValueOf.longValue() == 1 ? "true" : "false");
                    obj2 = lValueOf;
                } else if (obj == null) {
                    zzk().zzh.zza("unset");
                    obj2 = obj;
                } else {
                    str3 = str2;
                    obj2 = obj;
                }
            } else if (obj == null) {
                zzk().zzh.zza("unset");
                obj2 = obj;
            } else {
                str3 = str2;
                obj2 = obj;
            }
            str3 = "_npa";
        } else {
            str3 = str2;
            obj2 = obj;
        }
        if (!this.zzu.zzac()) {
            zzj().zzp().zza("User property not set since app measurement is disabled");
        } else if (this.zzu.zzaf()) {
            zzo().zza(new zznc(str3, j6, obj2, str));
        }
    }
}
