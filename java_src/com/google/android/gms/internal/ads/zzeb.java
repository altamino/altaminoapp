package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;

/* loaded from: classes2.dex */
final class zzeb implements Runnable {
    private final /* synthetic */ zzdy zzxx;
    private final /* synthetic */ int zzxy;
    private final /* synthetic */ boolean zzxz;

    zzeb(zzdy zzdyVar, int i, boolean z) {
        this.zzxx = zzdyVar;
        this.zzxy = i;
        this.zzxz = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        zzbp.zza zzaVarZzb = this.zzxx.zzb(this.zzxy, this.zzxz);
        this.zzxx.zzxm = zzaVarZzb;
        if (zzdy.zza(this.zzxy, zzaVarZzb)) {
            this.zzxx.zza(this.zzxy + 1, this.zzxz);
        }
    }
}
