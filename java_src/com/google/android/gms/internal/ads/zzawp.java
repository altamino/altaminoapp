package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzawp {
    private final Object lock;
    private volatile int zzdty;
    private volatile long zzdtz;

    private zzawp() {
        this.lock = new Object();
        this.zzdty = zzawq.zzdua;
        this.zzdtz = 0L;
    }

    public final void zzuy() {
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzdty == zzawq.zzduc) {
                if (this.zzdtz + ((Long) zzyt.zzpe().zzd(zzacu.zzcwe)).longValue() <= jCurrentTimeMillis) {
                    this.zzdty = zzawq.zzdua;
                }
            }
        }
        long jCurrentTimeMillis2 = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzdty != 2) {
                return;
            }
            this.zzdty = 3;
            if (this.zzdty == zzawq.zzduc) {
                this.zzdtz = jCurrentTimeMillis2;
            }
        }
    }

    /* synthetic */ zzawp(zzawo zzawoVar) {
        this();
    }
}
