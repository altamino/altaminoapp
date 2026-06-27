package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzfm implements Runnable {
    private final /* synthetic */ long zzcd;
    private final /* synthetic */ zzfj zzro;

    zzfm(zzfj zzfjVar, long j) {
        this.zzro = zzfjVar;
        this.zzcd = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzro.zzaa(this.zzcd);
    }
}
