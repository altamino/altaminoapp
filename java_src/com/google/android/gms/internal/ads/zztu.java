package com.google.android.gms.internal.ads;

import android.view.Surface;

/* loaded from: classes2.dex */
final class zztu implements Runnable {
    private final /* synthetic */ Surface zzafp;
    private final /* synthetic */ zzto zzbpu;

    zztu(zzto zztoVar, Surface surface) {
        this.zzbpu = zztoVar;
        this.zzafp = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpu.zzbpt.zzb(this.zzafp);
    }
}
