package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
abstract class zzaw {
    private static volatile Handler zza;
    private final zzif zzb;
    private final Runnable zzc;
    private volatile long zzd;

    public abstract void zzb();

    public final boolean zzc() {
        return this.zzd != 0;
    }

    private final Handler zzd() {
        Handler handler;
        if (zza != null) {
            return zza;
        }
        synchronized (zzaw.class) {
            try {
                if (zza == null) {
                    zza = new com.google.android.gms.internal.measurement.zzcp(this.zzb.zza().getMainLooper());
                }
                handler = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    final void zza() {
        this.zzd = 0L;
        zzd().removeCallbacks(this.zzc);
    }

    zzaw(zzif zzifVar) {
        Preconditions.checkNotNull(zzifVar);
        this.zzb = zzifVar;
        this.zzc = new zzav(this, zzifVar);
    }

    public final void zza(long j6) {
        zza();
        if (j6 >= 0) {
            this.zzd = this.zzb.zzb().currentTimeMillis();
            if (zzd().postDelayed(this.zzc, j6)) {
                return;
            }
            this.zzb.zzj().zzg().zza("Failed to schedule delayed post. time", Long.valueOf(j6));
        }
    }
}
