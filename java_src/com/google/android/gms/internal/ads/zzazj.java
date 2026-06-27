package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzazj {
    private long zzdxx;
    private long zzdxy = Long.MIN_VALUE;
    private final Object lock = new Object();

    public zzazj(long j) {
        this.zzdxx = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.lock) {
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime();
            if (this.zzdxy + this.zzdxx > jElapsedRealtime) {
                return false;
            }
            this.zzdxy = jElapsedRealtime;
            return true;
        }
    }

    public final void zzfe(long j) {
        synchronized (this.lock) {
            this.zzdxx = j;
        }
    }
}
