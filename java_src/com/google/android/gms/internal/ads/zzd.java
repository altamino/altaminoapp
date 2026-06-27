package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
public final class zzd extends Thread {
    private static final boolean DEBUG = zzag.DEBUG;
    private final BlockingQueue<zzr<?>> zzh;
    private final BlockingQueue<zzr<?>> zzi;
    private final zzb zzj;
    private final zzab zzk;
    private volatile boolean zzl = false;
    private final zzf zzm = new zzf(this);

    public zzd(BlockingQueue<zzr<?>> blockingQueue, BlockingQueue<zzr<?>> blockingQueue2, zzb zzbVar, zzab zzabVar) {
        this.zzh = blockingQueue;
        this.zzi = blockingQueue2;
        this.zzj = zzbVar;
        this.zzk = zzabVar;
    }

    public final void quit() {
        this.zzl = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        if (DEBUG) {
            zzag.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzj.zza();
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.zzl) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private final void processRequest() throws InterruptedException {
        zzr<?> zzrVarTake = this.zzh.take();
        zzrVarTake.zzb("cache-queue-take");
        zzrVarTake.zza(1);
        try {
            zzrVarTake.isCanceled();
            zzc zzcVarZza = this.zzj.zza(zzrVarTake.zze());
            if (zzcVarZza == null) {
                zzrVarTake.zzb("cache-miss");
                if (!this.zzm.zzb(zzrVarTake)) {
                    this.zzi.put(zzrVarTake);
                }
                return;
            }
            if (zzcVarZza.isExpired()) {
                zzrVarTake.zzb("cache-hit-expired");
                zzrVarTake.zza(zzcVarZza);
                if (!this.zzm.zzb(zzrVarTake)) {
                    this.zzi.put(zzrVarTake);
                }
                return;
            }
            zzrVarTake.zzb("cache-hit");
            zzy<?> zzyVarZza = zzrVarTake.zza(new zzp(zzcVarZza.data, zzcVarZza.zzf));
            zzrVarTake.zzb("cache-hit-parsed");
            if (!(zzcVarZza.zze < System.currentTimeMillis())) {
                this.zzk.zzb(zzrVarTake, zzyVarZza);
            } else {
                zzrVarTake.zzb("cache-hit-refresh-needed");
                zzrVarTake.zza(zzcVarZza);
                zzyVarZza.zzbj = true;
                if (!this.zzm.zzb(zzrVarTake)) {
                    this.zzk.zza(zzrVarTake, zzyVarZza, new zze(this, zzrVarTake));
                } else {
                    this.zzk.zzb(zzrVarTake, zzyVarZza);
                }
            }
        } finally {
            zzrVarTake.zza(2);
        }
    }
}
