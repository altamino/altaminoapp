package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzb implements Runnable {
    private final /* synthetic */ String zzbb;
    private final /* synthetic */ long zzcb;
    private final /* synthetic */ zza zzcc;

    zzb(zza zzaVar, String str, long j) {
        this.zzcc = zzaVar;
        this.zzbb = str;
        this.zzcb = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzcc.zza(this.zzbb, this.zzcb);
    }
}
