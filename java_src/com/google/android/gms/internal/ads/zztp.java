package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zztp implements Runnable {
    private final /* synthetic */ zznc zzavj;
    private final /* synthetic */ zzto zzbpu;

    zztp(zzto zztoVar, zznc zzncVar) {
        this.zzbpu = zztoVar;
        this.zzavj = zzncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpu.zzbpt.zze(this.zzavj);
    }
}
