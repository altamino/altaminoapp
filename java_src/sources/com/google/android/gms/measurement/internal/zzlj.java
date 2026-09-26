package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
final class zzlj implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzo zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ zzkp zzg;

    zzlj(zzkp zzkpVar, AtomicReference atomicReference, String str, String str2, String str3, zzo zzoVar, boolean z6) {
        this.zzg = zzkpVar;
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzoVar;
        this.zzf = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzfk zzfkVar = this.zzg.zzb;
                    if (zzfkVar == null) {
                        this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzfr.zza(this.zzb), this.zzc, this.zzd);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                    } else {
                        if (TextUtils.isEmpty(this.zzb)) {
                            Preconditions.checkNotNull(this.zze);
                            this.zza.set(zzfkVar.zza(this.zzc, this.zzd, this.zzf, this.zze));
                        } else {
                            this.zza.set(zzfkVar.zza(this.zzb, this.zzc, this.zzd, this.zzf));
                        }
                        this.zzg.zzal();
                        this.zza.notify();
                    }
                } catch (RemoteException e) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzfr.zza(this.zzb), this.zzc, e);
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
