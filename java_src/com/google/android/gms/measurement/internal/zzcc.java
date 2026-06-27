package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzcc implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;
    private final /* synthetic */ zzr zzou;

    zzcc(zzca zzcaVar, zzr zzrVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzou = zzrVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzc(this.zzou, this.zzos);
    }
}
