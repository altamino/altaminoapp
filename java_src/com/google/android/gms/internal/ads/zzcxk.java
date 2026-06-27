package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzcxk {
    private final Clock zzbsa;
    private final Object lock = new Object();
    private volatile int zzgjt = zzcxl.zzgju;
    private volatile long zzdtz = 0;

    public zzcxk(Clock clock) {
        this.zzbsa = clock;
    }

    private final void zzs(int i, int i2) {
        zzamk();
        long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzgjt != i) {
                return;
            }
            this.zzgjt = i2;
            if (this.zzgjt == zzcxl.zzgjw) {
                this.zzdtz = jCurrentTimeMillis;
            }
        }
    }

    private final void zzamk() {
        long jCurrentTimeMillis = this.zzbsa.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzgjt == zzcxl.zzgjw) {
                if (this.zzdtz + ((Long) zzyt.zzpe().zzd(zzacu.zzcwe)).longValue() <= jCurrentTimeMillis) {
                    this.zzgjt = zzcxl.zzgju;
                }
            }
        }
    }

    public final void zzbb(boolean z) {
        if (z) {
            zzs(zzcxl.zzgju, zzcxl.zzgjv);
        } else {
            zzs(zzcxl.zzgjv, zzcxl.zzgju);
        }
    }

    public final boolean zzaml() {
        boolean z;
        synchronized (this.lock) {
            zzamk();
            z = this.zzgjt == zzcxl.zzgjv;
        }
        return z;
    }

    public final boolean zzamm() {
        boolean z;
        synchronized (this.lock) {
            zzamk();
            z = this.zzgjt == zzcxl.zzgjw;
        }
        return z;
    }

    public final void zzuy() {
        zzs(zzcxl.zzgjv, zzcxl.zzgjw);
    }
}
