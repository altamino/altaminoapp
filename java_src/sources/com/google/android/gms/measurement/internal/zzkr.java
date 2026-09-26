package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
final class zzkr implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzo zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzcv zze;
    private final /* synthetic */ zzkp zzf;

    zzkr(zzkp zzkpVar, String str, String str2, zzo zzoVar, boolean z6, com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        this.zzf = zzkpVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = z6;
        this.zze = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = new Bundle();
        try {
            try {
                zzfk zzfkVar = this.zzf.zzb;
                if (zzfkVar == null) {
                    this.zzf.zzj().zzg().zza("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    this.zzf.zzq().zza(this.zze, bundle);
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    Bundle bundleZza = zznd.zza(zzfkVar.zza(this.zza, this.zzb, this.zzd, this.zzc));
                    this.zzf.zzal();
                    this.zzf.zzq().zza(this.zze, bundleZza);
                }
            } catch (RemoteException e) {
                this.zzf.zzj().zzg().zza("Failed to get user properties; remote exception", this.zza, e);
                this.zzf.zzq().zza(this.zze, bundle);
            }
        } catch (Throwable th) {
            this.zzf.zzq().zza(this.zze, bundle);
            throw th;
        }
    }
}
