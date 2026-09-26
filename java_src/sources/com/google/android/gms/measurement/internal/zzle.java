package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes11.dex */
final class zzle implements Runnable {
    private final /* synthetic */ zzbg zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzcv zzc;
    private final /* synthetic */ zzkp zzd;

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                zzfk zzfkVar = this.zzd.zzb;
                if (zzfkVar == null) {
                    this.zzd.zzj().zzg().zza("Discarding data. Failed to send event to service to bundle");
                    this.zzd.zzq().zza(this.zzc, (byte[]) null);
                } else {
                    byte[] bArrZza = zzfkVar.zza(this.zza, this.zzb);
                    this.zzd.zzal();
                    this.zzd.zzq().zza(this.zzc, bArrZza);
                }
            } catch (RemoteException e) {
                this.zzd.zzj().zzg().zza("Failed to send event to the service to bundle", e);
                this.zzd.zzq().zza(this.zzc, (byte[]) null);
            }
        } catch (Throwable th) {
            this.zzd.zzq().zza(this.zzc, (byte[]) null);
            throw th;
        }
    }

    zzle(zzkp zzkpVar, zzbg zzbgVar, String str, com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        this.zzd = zzkpVar;
        this.zza = zzbgVar;
        this.zzb = str;
        this.zzc = zzcvVar;
    }
}
