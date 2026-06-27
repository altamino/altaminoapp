package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzts implements Runnable {
    private final /* synthetic */ zzto zzbpu;
    private final /* synthetic */ int zzbpv;
    private final /* synthetic */ long zzbpw;

    zzts(zzto zztoVar, int i, long j) {
        this.zzbpu = zztoVar;
        this.zzbpv = i;
        this.zzbpw = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpu.zzbpt.zzb(this.zzbpv, this.zzbpw);
    }
}
