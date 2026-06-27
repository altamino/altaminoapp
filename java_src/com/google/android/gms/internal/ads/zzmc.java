package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmc implements Runnable {
    private final /* synthetic */ String zzael;
    private final /* synthetic */ zzma zzavk;
    private final /* synthetic */ long zzavl;
    private final /* synthetic */ long zzavm;

    zzmc(zzma zzmaVar, String str, long j, long j2) {
        this.zzavk = zzmaVar;
        this.zzael = str;
        this.zzavl = j;
        this.zzavm = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavk.zzavi.zzb(this.zzael, this.zzavl, this.zzavm);
    }
}
