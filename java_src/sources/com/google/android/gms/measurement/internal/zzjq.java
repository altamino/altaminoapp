package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzpr;

/* JADX INFO: loaded from: classes11.dex */
final class zzjq implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzcv zza;
    private final /* synthetic */ zziq zzb;

    zzjq(zziq zziqVar, com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        this.zzb = zziqVar;
        this.zza = zzcvVar;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0078  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() {
        Long lValueOf;
        zzlx zzlxVarZzp = this.zzb.zzp();
        if (!zzpr.zza() || !zzlxVarZzp.zze().zza(zzbi.zzbx)) {
            zzlxVarZzp.zzj().zzv().zza("getSessionId has been disabled.");
        } else {
            if (zzlxVarZzp.zzk().zzm().zzh()) {
                if (!zzlxVarZzp.zzk().zza(zzlxVarZzp.zzb().currentTimeMillis()) && zzlxVarZzp.zzk().zzl.zza() != 0) {
                    lValueOf = Long.valueOf(zzlxVarZzp.zzk().zzl.zza());
                }
                if (lValueOf != null) {
                    this.zzb.zzu.zzt().zza(this.zza, lValueOf.longValue());
                }
                try {
                    this.zza.zza(null);
                } catch (RemoteException e) {
                    this.zzb.zzu.zzj().zzg().zza("getSessionId failed with exception", e);
                    return;
                }
            }
            zzlxVarZzp.zzj().zzv().zza("Analytics storage consent denied; will not get session id");
        }
        lValueOf = null;
        if (lValueOf != null) {
            this.zzb.zzu.zzt().zza(this.zza, lValueOf.longValue());
        } else {
            this.zza.zza(null);
        }
    }
}
