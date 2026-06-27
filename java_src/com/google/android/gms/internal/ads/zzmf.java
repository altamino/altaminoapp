package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmf implements Runnable {
    private final /* synthetic */ zzma zzavk;
    private final /* synthetic */ zznc zzavr;

    zzmf(zzma zzmaVar, zznc zzncVar) {
        this.zzavk = zzmaVar;
        this.zzavr = zzncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavr.zzdk();
        this.zzavk.zzavi.zzb(this.zzavr);
    }
}
