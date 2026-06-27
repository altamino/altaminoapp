package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzcb implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;

    zzcb(zzca zzcaVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zze(this.zzos);
    }
}
