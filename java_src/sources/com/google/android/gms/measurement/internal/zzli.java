package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes11.dex */
final class zzli implements Runnable {
    private final /* synthetic */ boolean zza = true;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzad zzd;
    private final /* synthetic */ zzad zze;
    private final /* synthetic */ zzkp zzf;

    zzli(zzkp zzkpVar, boolean z6, zzo zzoVar, boolean z10, zzad zzadVar, zzad zzadVar2) {
        this.zzf = zzkpVar;
        this.zzb = zzoVar;
        this.zzc = z10;
        this.zzd = zzadVar;
        this.zze = zzadVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfk zzfkVar = this.zzf.zzb;
        if (zzfkVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzfkVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze.zza)) {
                    Preconditions.checkNotNull(this.zzb);
                    zzfkVar.zza(this.zzd, this.zzb);
                } else {
                    zzfkVar.zza(this.zzd);
                }
            } catch (RemoteException e) {
                this.zzf.zzj().zzg().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.zzf.zzal();
    }
}
