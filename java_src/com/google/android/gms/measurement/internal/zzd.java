package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzd implements Runnable {
    private final /* synthetic */ zza zzcc;
    private final /* synthetic */ long zzcd;

    zzd(zza zzaVar, long j) {
        this.zzcc = zzaVar;
        this.zzcd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcc.zzd(this.zzcd);
    }
}
