package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzck implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;

    zzck(zzca zzcaVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzd(this.zzos);
    }
}
