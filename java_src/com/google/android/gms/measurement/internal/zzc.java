package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzc implements Runnable {
    private final /* synthetic */ String zzbb;
    private final /* synthetic */ long zzcb;
    private final /* synthetic */ zza zzcc;

    zzc(zza zzaVar, String str, long j) {
        this.zzcc = zzaVar;
        this.zzbb = str;
        this.zzcb = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzcc.zzb(this.zzbb, this.zzcb);
    }
}
