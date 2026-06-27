package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zztv implements Runnable {
    private final /* synthetic */ zznc zzavr;
    private final /* synthetic */ zzto zzbpu;

    zztv(zzto zztoVar, zznc zzncVar) {
        this.zzbpu = zztoVar;
        this.zzavr = zzncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavr.zzdk();
        this.zzbpu.zzbpt.zzf(this.zzavr);
    }
}
