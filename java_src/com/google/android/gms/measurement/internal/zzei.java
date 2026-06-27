package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzei implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzga zzov;
    private final /* synthetic */ zzeg zzqq;
    private final /* synthetic */ boolean zzqr;

    zzei(zzeg zzegVar, boolean z, zzga zzgaVar, zzm zzmVar) {
        this.zzqq = zzegVar;
        this.zzqr = z;
        this.zzov = zzgaVar;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Discarding data. Failed to set user attribute");
        } else {
            this.zzqq.zza(zzamVar, this.zzqr ? null : this.zzov, this.zzos);
            this.zzqq.zzfg();
        }
    }
}
