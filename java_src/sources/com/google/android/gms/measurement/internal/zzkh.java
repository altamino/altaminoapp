package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes11.dex */
public final class zzkh extends zze {

    @VisibleForTesting
    protected zzki zza;
    private volatile zzki zzb;
    private volatile zzki zzc;
    private final Map<Activity, zzki> zzd;

    @GuardedBy
    private Activity zze;

    @GuardedBy
    private volatile boolean zzf;
    private volatile zzki zzg;
    private zzki zzh;

    @GuardedBy
    private boolean zzi;
    private final Object zzj;

    public final zzki zzaa() {
        return this.zzb;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ zzae zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }

    @MainThread
    private final zzki zzd(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zzki zzkiVar = this.zzd.get(activity);
        if (zzkiVar == null) {
            zzki zzkiVar2 = new zzki(null, zza(activity.getClass(), "Activity"), zzq().zzm());
            this.zzd.put(activity, zzkiVar2);
            zzkiVar = zzkiVar2;
        }
        return this.zzg != null ? this.zzg : zzkiVar;
    }

    @MainThread
    public final void zzb(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        long jElapsedRealtime = zzb().elapsedRealtime();
        if (!zze().zzu()) {
            this.zzb = null;
            zzl().zzb(new zzko(this, jElapsedRealtime));
        } else {
            zzki zzkiVarZzd = zzd(activity);
            this.zzc = this.zzb;
            this.zzb = null;
            zzl().zzb(new zzkn(this, zzkiVarZzd, jElapsedRealtime));
        }
    }

    @MainThread
    public final void zzc(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = true;
            if (activity != this.zze) {
                synchronized (this.zzj) {
                    this.zze = activity;
                    this.zzf = false;
                }
                if (zze().zzu()) {
                    this.zzg = null;
                    zzl().zzb(new zzkq(this));
                }
            }
        }
        if (!zze().zzu()) {
            this.zzb = this.zzg;
            zzl().zzb(new zzkl(this));
        } else {
            zza(activity, zzd(activity), false);
            zzb zzbVarZzc = zzc();
            zzbVarZzc.zzl().zzb(new zzc(zzbVarZzc, zzbVarZzc.zzb().elapsedRealtime()));
        }
    }

    public zzkh(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
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

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @WorkerThread
    public final zzki zza(boolean z6) {
        zzu();
        zzt();
        if (!z6) {
            return this.zza;
        }
        zzki zzkiVar = this.zza;
        return zzkiVar != null ? zzkiVar : this.zzh;
    }

    @VisibleForTesting
    private final String zza(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return str;
        }
        String[] strArrSplit = canonicalName.split("\\.");
        String str2 = strArrSplit.length > 0 ? strArrSplit[strArrSplit.length - 1] : "";
        return str2.length() > zze().zzb(null) ? str2.substring(0, zze().zzb(null)) : str2;
    }

    @MainThread
    public final void zzb(Activity activity, Bundle bundle) {
        zzki zzkiVar;
        if (!zze().zzu() || bundle == null || (zzkiVar = this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzkiVar.zzc);
        bundle2.putString("name", zzkiVar.zza);
        bundle2.putString("referrer_name", zzkiVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    static /* synthetic */ void zza(zzkh zzkhVar, Bundle bundle, zzki zzkiVar, zzki zzkiVar2, long j6) {
        if (bundle != null) {
            bundle.remove("screen_name");
            bundle.remove("screen_class");
        }
        zzkhVar.zza(zzkiVar, zzkiVar2, j6, true, zzkhVar.zzq().zza((String) null, "screen_view", bundle, (List<String>) null, false));
    }

    @MainThread
    private final void zza(Activity activity, zzki zzkiVar, boolean z6) {
        zzki zzkiVar2;
        zzki zzkiVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zzkiVar.zzb == null) {
            zzkiVar2 = new zzki(zzkiVar.zza, activity != null ? zza(activity.getClass(), "Activity") : null, zzkiVar.zzc, zzkiVar.zze, zzkiVar.zzf);
        } else {
            zzkiVar2 = zzkiVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzkiVar2;
        zzl().zzb(new zzkm(this, zzkiVar2, zzkiVar3, zzb().elapsedRealtime(), z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    @WorkerThread
    public final void zza(zzki zzkiVar, zzki zzkiVar2, long j6, boolean z6, Bundle bundle) {
        long j10;
        zzt();
        boolean z10 = false;
        boolean z11 = (zzkiVar2 != null && zzkiVar2.zzc == zzkiVar.zzc && zzkk.zza(zzkiVar2.zzb, zzkiVar.zzb) && zzkk.zza(zzkiVar2.zza, zzkiVar.zza)) ? false : true;
        if (z6 && this.zza != null) {
            z10 = true;
        }
        if (z11) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zznd.zza(zzkiVar, bundle2, true);
            if (zzkiVar2 != null) {
                String str = zzkiVar2.zza;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zzkiVar2.zzb;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zzkiVar2.zzc);
            }
            if (z10) {
                long jZza = zzp().zzb.zza(j6);
                if (jZza > 0) {
                    zzq().zza(bundle2, jZza);
                }
            }
            if (!zze().zzu()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = zzkiVar.zze ? "app" : "auto";
            long jCurrentTimeMillis = zzb().currentTimeMillis();
            if (zzkiVar.zze) {
                long j11 = zzkiVar.zzf;
                if (j11 != 0) {
                    j10 = j11;
                } else {
                    j10 = jCurrentTimeMillis;
                }
            } else {
                j10 = jCurrentTimeMillis;
            }
            zzm().zza(str3, "_vs", j10, bundle2);
        }
        if (z10) {
            zza(this.zza, true, j6);
        }
        this.zza = zzkiVar;
        if (zzkiVar.zze) {
            this.zzh = zzkiVar;
        }
        zzo().zza(zzkiVar);
    }

    @MainThread
    public final void zza(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!zze().zzu() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zzki(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void zza(Activity activity) {
        synchronized (this.zzj) {
            try {
                if (activity == this.zze) {
                    this.zze = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zze().zzu()) {
            this.zzd.remove(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(zzki zzkiVar, boolean z6, long j6) {
        zzc().zza(zzb().elapsedRealtime());
        if (!zzp().zza(zzkiVar != null && zzkiVar.zzd, z6, j6) || zzkiVar == null) {
            return;
        }
        zzkiVar.zzd = false;
    }

    @Deprecated
    public final void zza(@NonNull Activity activity, @Size String str, @Size String str2) {
        if (!zze().zzu()) {
            zzj().zzv().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzki zzkiVar = this.zzb;
        if (zzkiVar == null) {
            zzj().zzv().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.zzd.get(activity) == null) {
            zzj().zzv().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zza(activity.getClass(), "Activity");
        }
        boolean zZza = zzkk.zza(zzkiVar.zzb, str2);
        boolean zZza2 = zzkk.zza(zzkiVar.zza, str);
        if (zZza && zZza2) {
            zzj().zzv().zza("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > zze().zzb(null))) {
            zzj().zzv().zza("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > zze().zzb(null))) {
            zzj().zzv().zza("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzj().zzp().zza("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzki zzkiVar2 = new zzki(str, str2, zzq().zzm());
        this.zzd.put(activity, zzkiVar2);
        zza(activity, zzkiVar2, true);
    }

    public final void zza(Bundle bundle, long j6) {
        String str;
        synchronized (this.zzj) {
            try {
                if (!this.zzi) {
                    zzj().zzv().zza("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String strZza = null;
                if (bundle != null) {
                    String string = bundle.getString("screen_name");
                    if (string != null && (string.length() <= 0 || string.length() > zze().zzb(null))) {
                        zzj().zzv().zza("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                        return;
                    }
                    String string2 = bundle.getString("screen_class");
                    if (string2 != null && (string2.length() <= 0 || string2.length() > zze().zzb(null))) {
                        zzj().zzv().zza("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                        return;
                    } else {
                        strZza = string2;
                        str = string;
                    }
                } else {
                    str = null;
                }
                if (strZza == null) {
                    Activity activity = this.zze;
                    strZza = activity != null ? zza(activity.getClass(), "Activity") : "Activity";
                }
                String str2 = strZza;
                zzki zzkiVar = this.zzb;
                if (this.zzf && zzkiVar != null) {
                    this.zzf = false;
                    boolean zZza = zzkk.zza(zzkiVar.zzb, str2);
                    boolean zZza2 = zzkk.zza(zzkiVar.zza, str);
                    if (zZza && zZza2) {
                        zzj().zzv().zza("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                zzj().zzp().zza("Logging screen view with name, class", str == null ? "null" : str, str2 == null ? "null" : str2);
                zzki zzkiVar2 = this.zzb == null ? this.zzc : this.zzb;
                zzki zzkiVar3 = new zzki(str, str2, zzq().zzm(), true, j6);
                this.zzb = zzkiVar3;
                this.zzc = zzkiVar2;
                this.zzg = zzkiVar3;
                zzl().zzb(new zzkj(this, bundle, zzkiVar3, zzkiVar2, zzb().elapsedRealtime()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
