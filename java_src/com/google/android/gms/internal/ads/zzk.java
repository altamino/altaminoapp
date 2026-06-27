package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzk implements Runnable {
    private final zzr zzw;
    private final zzy zzx;
    private final Runnable zzy;

    public zzk(zzr zzrVar, zzy zzyVar, Runnable runnable) {
        this.zzw = zzrVar;
        this.zzx = zzyVar;
        this.zzy = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzw.isCanceled();
        if (this.zzx.zzbi == null) {
            this.zzw.zza((zzr) this.zzx.result);
        } else {
            this.zzw.zzb(this.zzx.zzbi);
        }
        if (this.zzx.zzbj) {
            this.zzw.zzb("intermediate-response");
        } else {
            this.zzw.zzc("done");
        }
        Runnable runnable = this.zzy;
        if (runnable != null) {
            runnable.run();
        }
    }
}
