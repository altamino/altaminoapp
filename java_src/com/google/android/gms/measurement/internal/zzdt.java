package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzdt implements Runnable {
    private final /* synthetic */ boolean zzaz;
    private final /* synthetic */ zzdd zzpm;

    zzdt(zzdd zzddVar, boolean z) {
        this.zzpm = zzddVar;
        this.zzaz = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzpm.zzg(this.zzaz);
    }
}
