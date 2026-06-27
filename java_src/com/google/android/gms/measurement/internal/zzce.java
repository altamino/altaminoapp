package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzce implements Runnable {
    private final /* synthetic */ zzca zzot;
    private final /* synthetic */ zzr zzou;

    zzce(zzca zzcaVar, zzr zzrVar) {
        this.zzot = zzcaVar;
        this.zzou = zzrVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzf(this.zzou);
    }
}
