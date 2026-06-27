package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzdw implements Runnable {
    private final /* synthetic */ long zzba;
    private final /* synthetic */ zzdd zzpm;

    zzdw(zzdd zzddVar, long j) {
        this.zzpm = zzddVar;
        this.zzba = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzpm.zzae().zzln.set(this.zzba);
        this.zzpm.zzad().zzdh().zza("Session timeout duration set", Long.valueOf(this.zzba));
    }
}
