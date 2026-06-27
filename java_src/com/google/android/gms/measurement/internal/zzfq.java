package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzfq extends zzab {
    private final /* synthetic */ zzft zzri;
    private final /* synthetic */ zzfp zzrs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfq(zzfp zzfpVar, zzcv zzcvVar, zzft zzftVar) {
        super(zzcvVar);
        this.zzrs = zzfpVar;
        this.zzri = zzftVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final void run() throws IllegalStateException {
        this.zzrs.cancel();
        this.zzrs.zzad().zzdi().zzaq("Starting upload from DelayedRunnable");
        this.zzri.zzga();
    }
}
