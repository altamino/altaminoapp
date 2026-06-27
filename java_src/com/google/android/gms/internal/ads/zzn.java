package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
public final class zzn extends Thread {
    private final zzm zzaa;
    private final zzb zzj;
    private final zzab zzk;
    private volatile boolean zzl = false;
    private final BlockingQueue<zzr<?>> zzz;

    public zzn(BlockingQueue<zzr<?>> blockingQueue, zzm zzmVar, zzb zzbVar, zzab zzabVar) {
        this.zzz = blockingQueue;
        this.zzaa = zzmVar;
        this.zzj = zzbVar;
        this.zzk = zzabVar;
    }

    public final void quit() {
        this.zzl = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.zzl) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private final void processRequest() throws InterruptedException {
        zzr<?> zzrVarTake = this.zzz.take();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzrVarTake.zza(3);
        try {
            zzrVarTake.zzb("network-queue-take");
            zzrVarTake.isCanceled();
            TrafficStats.setThreadStatsTag(zzrVarTake.zzd());
            zzp zzpVarZzc = this.zzaa.zzc(zzrVarTake);
            zzrVarTake.zzb("network-http-complete");
            if (zzpVarZzc.zzac && zzrVarTake.zzl()) {
                zzrVarTake.zzc("not-modified");
                zzrVarTake.zzm();
                return;
            }
            zzy<?> zzyVarZza = zzrVarTake.zza(zzpVarZzc);
            zzrVarTake.zzb("network-parse-complete");
            if (zzrVarTake.zzh() && zzyVarZza.zzbh != null) {
                this.zzj.zza(zzrVarTake.zze(), zzyVarZza.zzbh);
                zzrVarTake.zzb("network-cache-written");
            }
            zzrVarTake.zzk();
            this.zzk.zzb(zzrVarTake, zzyVarZza);
            zzrVarTake.zza(zzyVarZza);
        } catch (Exception e) {
            zzag.zza(e, "Unhandled exception %s", e.toString());
            zzaf zzafVar = new zzaf(e);
            zzafVar.zza(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.zzk.zza(zzrVarTake, zzafVar);
            zzrVarTake.zzm();
        } catch (zzaf e2) {
            e2.zza(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.zzk.zza(zzrVarTake, e2);
            zzrVarTake.zzm();
        } finally {
            zzrVarTake.zza(4);
        }
    }
}
