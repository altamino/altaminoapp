package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
final class zzlh implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzo zze;
    private final /* synthetic */ zzkp zzf;

    zzlh(zzkp zzkpVar, AtomicReference atomicReference, String str, String str2, String str3, zzo zzoVar) {
        this.zzf = zzkpVar;
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzfk zzfkVar = this.zzf.zzb;
                    if (zzfkVar == null) {
                        this.zzf.zzj().zzg().zza("(legacy) Failed to get conditional properties; not connected to service", zzfr.zza(this.zzb), this.zzc, this.zzd);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                    } else {
                        if (TextUtils.isEmpty(this.zzb)) {
                            Preconditions.checkNotNull(this.zze);
                            this.zza.set(zzfkVar.zza(this.zzc, this.zzd, this.zze));
                        } else {
                            this.zza.set(zzfkVar.zza(this.zzb, this.zzc, this.zzd));
                        }
                        this.zzf.zzal();
                        this.zza.notify();
                    }
                } catch (RemoteException e) {
                    this.zzf.zzj().zzg().zza("(legacy) Failed to get conditional properties; remote exception", zzfr.zza(this.zzb), this.zzc, e);
                    this.zza.set(Collections.emptyList());
                    this.zza.notify();
                }
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
