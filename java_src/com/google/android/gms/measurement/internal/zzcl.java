package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzcl implements Runnable {
    private final /* synthetic */ zzaj zzdj;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;

    zzcl(zzca zzcaVar, zzaj zzajVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzdj = zzajVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzaj zzajVarZzb = this.zzot.zzb(this.zzdj, this.zzos);
        this.zzot.zzkt.zzgf();
        this.zzot.zzkt.zzc(zzajVarZzb, this.zzos);
    }
}
