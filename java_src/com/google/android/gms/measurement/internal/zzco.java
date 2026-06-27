package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzco implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;
    private final /* synthetic */ zzga zzov;

    zzco(zzca zzcaVar, zzga zzgaVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzov = zzgaVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzc(this.zzov, this.zzos);
    }
}
