package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzme implements Runnable {
    private final /* synthetic */ zzma zzavk;
    private final /* synthetic */ int zzavo;
    private final /* synthetic */ long zzavp;
    private final /* synthetic */ long zzavq;

    zzme(zzma zzmaVar, int i, long j, long j2) {
        this.zzavk = zzmaVar;
        this.zzavo = i;
        this.zzavp = j;
        this.zzavq = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavk.zzavi.zzc(this.zzavo, this.zzavp, this.zzavq);
    }
}
