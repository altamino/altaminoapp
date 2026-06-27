package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zztq implements Runnable {
    private final /* synthetic */ String zzael;
    private final /* synthetic */ long zzavl;
    private final /* synthetic */ long zzavm;
    private final /* synthetic */ zzto zzbpu;

    zztq(zzto zztoVar, String str, long j, long j2) {
        this.zzbpu = zztoVar;
        this.zzael = str;
        this.zzavl = j;
        this.zzavm = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpu.zzbpt.zze(this.zzael, this.zzavl, this.zzavm);
    }
}
