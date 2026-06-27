package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmb implements Runnable {
    private final /* synthetic */ zznc zzavj;
    private final /* synthetic */ zzma zzavk;

    zzmb(zzma zzmaVar, zznc zzncVar) {
        this.zzavk = zzmaVar;
        this.zzavj = zzncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzavk.zzavi.zza(this.zzavj);
    }
}
