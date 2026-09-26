package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzoo;
import com.google.android.gms.internal.measurement.zzot;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class zzaf extends zzid {
    private Boolean zza;
    private zzah zzb;
    private Boolean zzc;

    public static long zzh() {
        return zzbi.zzd.zza(null).longValue();
    }

    @VisibleForTesting
    private final Bundle zzy() {
        try {
            if (zza().getPackageManager() == null) {
                zzj().zzg().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zza()).getApplicationInfo(zza().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzj().zzg().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzj().zzg().zza("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    final void zza(zzah zzahVar) {
        this.zzb = zzahVar;
    }

    final int zzb(String str) {
        return (zzoo.zza() && zze().zzf(null, zzbi.zzcu)) ? 500 : 100;
    }

    final int zzc() {
        return (zzot.zza() && zze().zzf(null, zzbi.zzcc) && zzq().zza(231100000, true)) ? 35 : 0;
    }

    public final int zzd(@Size String str) {
        return zza(str, zzbi.zzai, 25, 100);
    }

    @WorkerThread
    public final int zze(@Size String str) {
        return zzb(str, zzbi.zzo);
    }

    @WorkerThread
    final long zzf(String str) {
        return zzc(str, zzbi.zza);
    }

    public final int zzg() {
        return zzq().zza(201500000, true) ? 100 : 25;
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

    public static long zzm() {
        return zzbi.zzad.zza(null).longValue();
    }

    @WorkerThread
    public final double zza(String str, zzfi<Double> zzfiVar) {
        if (str == null) {
            return zzfiVar.zza(null).doubleValue();
        }
        String strZza = this.zzb.zza(str, zzfiVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfiVar.zza(null).doubleValue();
        }
        try {
            return zzfiVar.zza(Double.valueOf(Double.parseDouble(strZza))).doubleValue();
        } catch (NumberFormatException unused) {
            return zzfiVar.zza(null).doubleValue();
        }
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

    @VisibleForTesting
    final Boolean zzg(@Size String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzy = zzy();
        if (bundleZzy == null) {
            zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleZzy.containsKey(str)) {
            return Boolean.valueOf(bundleZzy.getBoolean(str));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x003e A[Catch: NotFoundException -> 0x0043, TRY_LEAVE, TryCatch #0 {NotFoundException -> 0x0043, blocks: (B:12:0x002b, B:15:0x003e), top: B:20:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:20:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @VisibleForTesting
    final List<String> zzi(@Size String str) {
        Integer numValueOf;
        String[] stringArray;
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzy = zzy();
        if (bundleZzy != null) {
            if (bundleZzy.containsKey(str)) {
                numValueOf = Integer.valueOf(bundleZzy.getInt(str));
            }
            if (numValueOf == null) {
                return null;
            }
            try {
                stringArray = zza().getResources().getStringArray(numValueOf.intValue());
                if (stringArray == null) {
                    return null;
                }
                return Arrays.asList(stringArray);
            } catch (Resources.NotFoundException e) {
                zzj().zzg().zza("Failed to load string array from metadata: resource not found", e);
                return null;
            }
        }
        zzj().zzg().zza("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf == null) {
            return null;
        }
        stringArray = zza().getResources().getStringArray(numValueOf.intValue());
        if (stringArray == null) {
            return null;
        }
        return Arrays.asList(stringArray);
    }

    @WorkerThread
    final boolean zzj(String str) {
        return zzf(str, zzbi.zzak);
    }

    public final boolean zzk(String str) {
        return "1".equals(this.zzb.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzl(String str) {
        return "1".equals(this.zzb.zza(str, "measurement.event_sampling_enabled"));
    }

    public final String zzn() {
        return zza("debug.firebase.analytics.app", "");
    }

    public final String zzo() {
        return zza("debug.deferred.deeplink", "");
    }

    public final boolean zzp() {
        Boolean boolZzg = zzg("google_analytics_adid_collection_enabled");
        return boolZzg == null || boolZzg.booleanValue();
    }

    public final boolean zzu() {
        Boolean boolZzg = zzg("google_analytics_automatic_screen_reporting_enabled");
        return boolZzg == null || boolZzg.booleanValue();
    }

    public final boolean zzv() {
        Boolean boolZzg = zzg("firebase_analytics_collection_deactivated");
        return boolZzg != null && boolZzg.booleanValue();
    }

    @WorkerThread
    final boolean zzw() {
        if (this.zza == null) {
            Boolean boolZzg = zzg("app_measurement_lite");
            this.zza = boolZzg;
            if (boolZzg == null) {
                this.zza = Boolean.FALSE;
            }
        }
        return this.zza.booleanValue() || !this.zzu.zzag();
    }

    public final boolean zzx() {
        if (this.zzc == null) {
            synchronized (this) {
                try {
                    if (this.zzc == null) {
                        ApplicationInfo applicationInfo = zza().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            this.zzc = Boolean.valueOf(str != null && str.equals(myProcessName));
                        }
                        if (this.zzc == null) {
                            this.zzc = Boolean.TRUE;
                            zzj().zzg().zza("My process not in the list of running processes");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.zzc.booleanValue();
    }

    zzaf(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzb = new zzah() { // from class: com.google.android.gms.measurement.internal.zzai
            @Override // com.google.android.gms.measurement.internal.zzah
            public final String zza(String str, String str2) {
                return null;
            }
        };
    }

    @WorkerThread
    public final int zzb(String str, zzfi<Integer> zzfiVar) {
        if (str == null) {
            return zzfiVar.zza(null).intValue();
        }
        String strZza = this.zzb.zza(str, zzfiVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfiVar.zza(null).intValue();
        }
        try {
            return zzfiVar.zza(Integer.valueOf(Integer.parseInt(strZza))).intValue();
        } catch (NumberFormatException unused) {
            return zzfiVar.zza(null).intValue();
        }
    }

    @WorkerThread
    public final String zzd(String str, zzfi<String> zzfiVar) {
        if (str == null) {
            return zzfiVar.zza(null);
        }
        return zzfiVar.zza(this.zzb.zza(str, zzfiVar.zza()));
    }

    public final boolean zze(String str, zzfi<Boolean> zzfiVar) {
        return zzf(str, zzfiVar);
    }

    @WorkerThread
    public final boolean zzf(String str, zzfi<Boolean> zzfiVar) {
        if (str == null) {
            return zzfiVar.zza(null).booleanValue();
        }
        String strZza = this.zzb.zza(str, zzfiVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfiVar.zza(null).booleanValue();
        }
        return zzfiVar.zza(Boolean.valueOf("1".equals(strZza))).booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ zznd zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzid
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @WorkerThread
    final String zzh(String str) {
        return zzd(str, zzbi.zzal);
    }

    final int zzc(String str) {
        return Math.max(zzb(str), 256);
    }

    @WorkerThread
    public final long zzc(String str, zzfi<Long> zzfiVar) {
        if (str == null) {
            return zzfiVar.zza(null).longValue();
        }
        String strZza = this.zzb.zza(str, zzfiVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return zzfiVar.zza(null).longValue();
        }
        try {
            return zzfiVar.zza(Long.valueOf(Long.parseLong(strZza))).longValue();
        } catch (NumberFormatException unused) {
            return zzfiVar.zza(null).longValue();
        }
    }

    final int zza(@Size String str) {
        return zza(str, zzbi.zzah, 500, 2000);
    }

    @WorkerThread
    public final int zza(String str, zzfi<Integer> zzfiVar, int i10, int i11) {
        return Math.max(Math.min(zzb(str, zzfiVar), i11), i10);
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    private final String zza(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            zzj().zzg().zza("Could not find SystemProperties class", e);
            return str2;
        } catch (IllegalAccessException e2) {
            zzj().zzg().zza("Could not access SystemProperties.get()", e2);
            return str2;
        } catch (NoSuchMethodException e6) {
            zzj().zzg().zza("Could not find SystemProperties.get() method", e6);
            return str2;
        } catch (InvocationTargetException e7) {
            zzj().zzg().zza("SystemProperties.get() threw an exception", e7);
            return str2;
        }
    }

    public final boolean zza(zzfi<Boolean> zzfiVar) {
        return zzf(null, zzfiVar);
    }
}
