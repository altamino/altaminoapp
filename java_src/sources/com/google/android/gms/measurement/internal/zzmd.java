package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.zzoh;

/* JADX INFO: loaded from: classes11.dex */
final class zzmd {

    @VisibleForTesting
    protected long zza;
    final /* synthetic */ zzlx zzb;

    @VisibleForTesting
    private long zzc;
    private final zzaw zzd;

    @VisibleForTesting
    @WorkerThread
    final long zza(long j6) {
        long j10 = j6 - this.zza;
        this.zza = j6;
        return j10;
    }

    public zzmd(zzlx zzlxVar) {
        this.zzb = zzlxVar;
        this.zzd = new zzmg(this, zzlxVar.zzu);
        long jElapsedRealtime = zzlxVar.zzb().elapsedRealtime();
        this.zzc = jElapsedRealtime;
        this.zza = jElapsedRealtime;
    }

    static /* synthetic */ void zza(zzmd zzmdVar) {
        zzmdVar.zzb.zzt();
        zzmdVar.zza(false, false, zzmdVar.zzb.zzb().elapsedRealtime());
        zzmdVar.zzb.zzc().zza(zzmdVar.zzb.zzb().elapsedRealtime());
    }

    @WorkerThread
    final void zzb(long j6) {
        this.zzd.zza();
    }

    @WorkerThread
    final void zzc(long j6) {
        this.zzb.zzt();
        this.zzd.zza();
        this.zzc = j6;
        this.zza = j6;
    }

    final void zza() {
        this.zzd.zza();
        this.zzc = 0L;
        this.zza = 0L;
    }

    @WorkerThread
    public final boolean zza(boolean z6, boolean z10, long j6) {
        this.zzb.zzt();
        this.zzb.zzu();
        if (!zzoh.zza() || !this.zzb.zze().zza(zzbi.zzbn) || this.zzb.zzu.zzac()) {
            this.zzb.zzk().zzk.zza(this.zzb.zzb().currentTimeMillis());
        }
        long jZza = j6 - this.zzc;
        if (!z6 && jZza < 1000) {
            this.zzb.zzj().zzp().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(jZza));
            return false;
        }
        if (!z10) {
            jZza = zza(j6);
        }
        this.zzb.zzj().zzp().zza("Recording user engagement, ms", Long.valueOf(jZza));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", jZza);
        zznd.zza(this.zzb.zzn().zza(!this.zzb.zze().zzu()), bundle, true);
        if (!z10) {
            this.zzb.zzm().zzc("auto", "_e", bundle);
        }
        this.zzc = j6;
        this.zzd.zza();
        this.zzd.zza(3600000L);
        return true;
    }
}
