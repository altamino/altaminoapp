package com.google.android.gms.internal.ads;

import android.view.Surface;

/* loaded from: classes2.dex */
final class zzhf implements Runnable {
    private final /* synthetic */ zzhd zzafo;
    private final /* synthetic */ Surface zzafp;

    zzhf(zzhd zzhdVar, Surface surface) {
        this.zzafo = zzhdVar;
        this.zzafp = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzafo.zzaev.zza(this.zzafp);
    }
}
