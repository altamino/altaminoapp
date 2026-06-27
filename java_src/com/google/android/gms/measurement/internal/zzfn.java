package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzfn implements Runnable {
    private final /* synthetic */ long zzcd;
    private final /* synthetic */ zzfj zzro;

    zzfn(zzfj zzfjVar, long j) {
        this.zzro = zzfjVar;
        this.zzcd = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzro.zzac(this.zzcd);
    }
}
