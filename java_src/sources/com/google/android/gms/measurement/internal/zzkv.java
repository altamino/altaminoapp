package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
final class zzkv implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzkp zzb;

    zzkv(zzkp zzkpVar, zzo zzoVar) {
        this.zzb = zzkpVar;
        this.zza = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfk zzfkVar = this.zzb.zzb;
        if (zzfkVar == null) {
            this.zzb.zzj().zzg().zza("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzfkVar.zzd(this.zza);
        } catch (RemoteException e) {
            this.zzb.zzj().zzg().zza("Failed to reset data on the service: remote exception", e);
        }
        this.zzb.zzal();
    }
}
