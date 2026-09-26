package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes11.dex */
public final class zzlx extends zze {
    protected final zzmf zza;
    protected final zzmd zzb;
    private Handler zzc;
    private boolean zzd;
    private final zzmc zze;

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzif
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    zzlx(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzd = true;
        this.zza = new zzmf(this);
        this.zzb = new zzmd(this);
        this.zze = new zzmc(this);
    }

    static /* synthetic */ void zza(zzlx zzlxVar, long j6) {
        zzlxVar.zzt();
        zzlxVar.zzab();
        zzlxVar.zzj().zzp().zza("Activity paused, time", Long.valueOf(j6));
        zzlxVar.zze.zza(j6);
        if (zzlxVar.zze().zzu()) {
            zzlxVar.zzb.zzb(j6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzab() {
        zzt();
        if (this.zzc == null) {
            this.zzc = new com.google.android.gms.internal.measurement.zzcp(Looper.getMainLooper());
        }
    }

    static /* synthetic */ void zzb(zzlx zzlxVar, long j6) {
        zzlxVar.zzt();
        zzlxVar.zzab();
        zzlxVar.zzj().zzp().zza("Activity resumed, time", Long.valueOf(j6));
        if (zzlxVar.zze().zza(zzbi.zzcj)) {
            if (zzlxVar.zze().zzu() || zzlxVar.zzd) {
                zzlxVar.zzb.zzc(j6);
            }
        } else if (zzlxVar.zze().zzu() || zzlxVar.zzk().zzn.zza()) {
            zzlxVar.zzb.zzc(j6);
        }
        zzlxVar.zze.zza();
        zzmf zzmfVar = zzlxVar.zza;
        zzmfVar.zza.zzt();
        if (zzmfVar.zza.zzu.zzac()) {
            zzmfVar.zza(zzmfVar.zza.zzb().currentTimeMillis(), false);
        }
    }

    @WorkerThread
    final boolean zzaa() {
        zzt();
        return this.zzd;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
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

    @WorkerThread
    final void zza(boolean z6) {
        zzt();
        this.zzd = z6;
    }

    public final boolean zza(boolean z6, boolean z10, long j6) {
        return this.zzb.zza(z6, z10, j6);
    }
}
