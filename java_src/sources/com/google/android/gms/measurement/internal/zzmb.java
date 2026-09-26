package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzpm;

/* JADX INFO: loaded from: classes11.dex */
final class zzmb implements Runnable {
    long zza;
    long zzb;
    final /* synthetic */ zzmc zzc;

    zzmb(zzmc zzmcVar, long j6, long j10) {
        this.zzc = zzmcVar;
        this.zza = j6;
        this.zzb = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzme
            @Override // java.lang.Runnable
            public final void run() {
                zzmb zzmbVar = this.zza;
                zzmc zzmcVar = zzmbVar.zzc;
                long j6 = zzmbVar.zza;
                long j10 = zzmbVar.zzb;
                zzmcVar.zza.zzt();
                zzmcVar.zza.zzj().zzc().zza("Application going to the background");
                zzmcVar.zza.zzk().zzn.zza(true);
                zzmcVar.zza.zza(true);
                if (!zzmcVar.zza.zze().zzu()) {
                    zzmcVar.zza.zzb.zzb(j10);
                    zzmcVar.zza.zza(false, false, j10);
                }
                if (zzpm.zza() && zzmcVar.zza.zze().zza(zzbi.zzce)) {
                    zzmcVar.zza.zzj().zzn().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j6));
                } else {
                    zzmcVar.zza.zzm().zza("auto", "_ab", j6, new Bundle());
                }
            }
        });
    }
}
