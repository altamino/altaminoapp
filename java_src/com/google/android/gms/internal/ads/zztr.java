package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zztr implements Runnable {
    private final /* synthetic */ zzlh zzavn;
    private final /* synthetic */ zzto zzbpu;

    zztr(zzto zztoVar, zzlh zzlhVar) {
        this.zzbpu = zztoVar;
        this.zzavn = zzlhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbpu.zzbpt.zzk(this.zzavn);
    }
}
