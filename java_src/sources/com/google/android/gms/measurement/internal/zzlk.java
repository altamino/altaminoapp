package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
final class zzlk implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzo zzc;
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzcv zzd;
    private final /* synthetic */ zzkp zze;

    zzlk(zzkp zzkpVar, String str, String str2, zzo zzoVar, com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        this.zze = zzkpVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            try {
                zzfk zzfkVar = this.zze.zzb;
                if (zzfkVar == null) {
                    this.zze.zzj().zzg().zza("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    this.zze.zzq().zza(this.zzd, arrayList);
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    ArrayList<Bundle> arrayListZzb = zznd.zzb(zzfkVar.zza(this.zza, this.zzb, this.zzc));
                    this.zze.zzal();
                    this.zze.zzq().zza(this.zzd, arrayListZzb);
                }
            } catch (RemoteException e) {
                this.zze.zzj().zzg().zza("Failed to get conditional properties; remote exception", this.zza, this.zzb, e);
                this.zze.zzq().zza(this.zzd, arrayList);
            }
        } catch (Throwable th) {
            this.zze.zzq().zza(this.zzd, arrayList);
            throw th;
        }
    }
}
