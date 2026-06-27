package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.measurement.internal.zzal;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzt extends zzct {
    private Boolean zzdz;
    private zzv zzea;
    private Boolean zzeb;

    zzt(zzby zzbyVar) {
        super(zzbyVar);
        this.zzea = zzu.zzec;
        zzal.zza(zzbyVar);
    }

    final void zza(zzv zzvVar) {
        this.zzea = zzvVar;
    }

    static String zzbo() {
        return zzal.zzgd.get(null);
    }

    public final int zzi(String str) {
        return zzb(str, zzal.zzgr);
    }

    public final long zzav() {
        zzag();
        return 15300L;
    }

    public final boolean zzbp() {
        if (this.zzeb == null) {
            synchronized (this) {
                if (this.zzeb == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzeb = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.zzeb == null) {
                        this.zzeb = Boolean.TRUE;
                        zzad().zzda().zzaq("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzeb.booleanValue();
    }

    public final long zza(String str, zzal.zza<Long> zzaVar) {
        if (str == null) {
            return zzaVar.get(null).longValue();
        }
        String strZzb = this.zzea.zzb(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzb)) {
            return zzaVar.get(null).longValue();
        }
        try {
            return zzaVar.get(Long.valueOf(Long.parseLong(strZzb))).longValue();
        } catch (NumberFormatException unused) {
            return zzaVar.get(null).longValue();
        }
    }

    public final int zzb(String str, zzal.zza<Integer> zzaVar) {
        if (str == null) {
            return zzaVar.get(null).intValue();
        }
        String strZzb = this.zzea.zzb(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzb)) {
            return zzaVar.get(null).intValue();
        }
        try {
            return zzaVar.get(Integer.valueOf(Integer.parseInt(strZzb))).intValue();
        } catch (NumberFormatException unused) {
            return zzaVar.get(null).intValue();
        }
    }

    public final double zzc(String str, zzal.zza<Double> zzaVar) {
        if (str == null) {
            return zzaVar.get(null).doubleValue();
        }
        String strZzb = this.zzea.zzb(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzb)) {
            return zzaVar.get(null).doubleValue();
        }
        try {
            return zzaVar.get(Double.valueOf(Double.parseDouble(strZzb))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzaVar.get(null).doubleValue();
        }
    }

    public final boolean zzd(String str, zzal.zza<Boolean> zzaVar) {
        if (str == null) {
            return zzaVar.get(null).booleanValue();
        }
        String strZzb = this.zzea.zzb(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzb)) {
            return zzaVar.get(null).booleanValue();
        }
        return zzaVar.get(Boolean.valueOf(Boolean.parseBoolean(strZzb))).booleanValue();
    }

    public final boolean zze(String str, zzal.zza<Boolean> zzaVar) {
        return zzd(str, zzaVar);
    }

    public final boolean zza(zzal.zza<Boolean> zzaVar) {
        return zzd(null, zzaVar);
    }

    @VisibleForTesting
    final Boolean zzj(String str) throws IllegalStateException {
        Preconditions.checkNotEmpty(str);
        try {
            if (getContext().getPackageManager() == null) {
                zzad().zzda().zzaq("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
            if (applicationInfo == null) {
                zzad().zzda().zzaq("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            if (applicationInfo.metaData == null) {
                zzad().zzda().zzaq("Failed to load metadata: Metadata bundle is null");
                return null;
            }
            if (applicationInfo.metaData.containsKey(str)) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzad().zzda().zza("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final boolean zzbq() throws IllegalStateException {
        zzag();
        Boolean boolZzj = zzj("firebase_analytics_collection_deactivated");
        return boolZzj != null && boolZzj.booleanValue();
    }

    public final Boolean zzbr() {
        zzag();
        return zzj("firebase_analytics_collection_enabled");
    }

    public static long zzbs() {
        return zzal.zzhg.get(null).longValue();
    }

    public static long zzbt() {
        return zzal.zzgg.get(null).longValue();
    }

    public final String zzbu() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e) {
            zzad().zzda().zza("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            zzad().zzda().zza("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            zzad().zzda().zza("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            zzad().zzda().zza("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public static boolean zzbv() {
        return zzal.zzgc.get(null).booleanValue();
    }

    public final boolean zzk(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(this.zzea.zzb(str, "gaia_collection_enabled"));
    }

    public final boolean zzl(String str) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(this.zzea.zzb(str, "measurement.event_sampling_enabled"));
    }

    final boolean zzm(String str) {
        return zzd(str, zzal.zzhq);
    }

    final boolean zzn(String str) {
        return zzd(str, zzal.zzhs);
    }

    final boolean zzo(String str) {
        return zzd(str, zzal.zzht);
    }

    final boolean zzp(String str) {
        return zzd(str, zzal.zzhk);
    }

    final String zzq(String str) {
        zzal.zza<String> zzaVar = zzal.zzhl;
        if (str == null) {
            return zzaVar.get(null);
        }
        return zzaVar.get(this.zzea.zzb(str, zzaVar.getKey()));
    }

    final boolean zzr(String str) {
        return zzd(str, zzal.zzhu);
    }

    final boolean zzs(String str) {
        return zzd(str, zzal.zzhv);
    }

    final boolean zzt(String str) {
        return zzd(str, zzal.zzhx);
    }

    final boolean zzu(String str) {
        return zzd(str, zzal.zzhy);
    }

    final boolean zzv(String str) {
        return zzd(str, zzal.zzhz);
    }

    final boolean zzw(String str) {
        return zzd(str, zzal.zzib);
    }

    final boolean zzbw() {
        if (this.zzdz == null) {
            this.zzdz = zzj("app_measurement_lite");
            if (this.zzdz == null) {
                this.zzdz = false;
            }
        }
        return this.zzdz.booleanValue() || !this.zzl.zzep();
    }

    final boolean zzx(String str) {
        return zzd(str, zzal.zzia);
    }

    static boolean zzbx() {
        return zzal.zzic.get(null).booleanValue();
    }

    final boolean zzy(String str) {
        return zzd(str, zzal.zzid);
    }

    final boolean zzz(String str) {
        return zzd(str, zzal.zzie);
    }

    final boolean zzaa(String str) {
        return zzd(str, zzal.zzif);
    }

    final boolean zzab(String str) {
        return zzd(str, zzal.zzig);
    }

    final boolean zzac(String str) {
        return zzd(str, zzal.zzil);
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
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
