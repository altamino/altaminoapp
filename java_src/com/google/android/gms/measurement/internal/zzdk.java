package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzdk implements Runnable {
    private final /* synthetic */ zzda zzbc;
    private final /* synthetic */ zzdd zzpm;

    zzdk(zzdd zzddVar, zzda zzdaVar) {
        this.zzpm = zzddVar;
        this.zzbc = zzdaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzpm.zza(this.zzbc);
    }
}
