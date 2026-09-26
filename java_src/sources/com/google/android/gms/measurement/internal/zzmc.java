package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes11.dex */
final class zzmc {
    final /* synthetic */ zzlx zza;
    private zzmb zzb;

    @WorkerThread
    final void zza(long j6) {
        this.zzb = new zzmb(this, this.zza.zzb().currentTimeMillis(), j6);
        this.zza.zzc.postDelayed(this.zzb, 2000L);
    }

    zzmc(zzlx zzlxVar) {
        this.zza = zzlxVar;
    }

    @WorkerThread
    final void zza() {
        this.zza.zzt();
        if (this.zzb != null) {
            this.zza.zzc.removeCallbacks(this.zzb);
        }
        this.zza.zzk().zzn.zza(false);
        this.zza.zza(false);
    }
}
