package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzkl implements Runnable {
    private final /* synthetic */ zzkh zza;

    zzkl(zzkh zzkhVar) {
        this.zza = zzkhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkh zzkhVar = this.zza;
        zzkhVar.zza = zzkhVar.zzh;
    }
}
