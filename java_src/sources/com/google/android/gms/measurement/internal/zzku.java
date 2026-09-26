package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
final class zzku implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzkp zzd;

    zzku(zzkp zzkpVar, AtomicReference atomicReference, zzo zzoVar, boolean z6) {
        this.zzd = zzkpVar;
        this.zza = atomicReference;
        this.zzb = zzoVar;
        this.zzc = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzfk zzfkVar = this.zzd.zzb;
                    if (zzfkVar == null) {
                        this.zzd.zzj().zzg().zza("Failed to get all user properties; not connected to service");
                        this.zza.notify();
                    } else {
                        Preconditions.checkNotNull(this.zzb);
                        this.zza.set(zzfkVar.zza(this.zzb, this.zzc));
                        this.zzd.zzal();
                        this.zza.notify();
                    }
                } catch (RemoteException e) {
                    this.zzd.zzj().zzg().zza("Failed to get all user properties; remote exception", e);
                    this.zza.notify();
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
