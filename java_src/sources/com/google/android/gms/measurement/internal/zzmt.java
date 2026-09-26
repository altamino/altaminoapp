package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes11.dex */
final class zzmt implements Callable<String> {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzmp zzb;

    zzmt(zzmp zzmpVar, zzo zzoVar) {
        this.zzb = zzmpVar;
        this.zza = zzoVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        if (!this.zzb.zzb((String) Preconditions.checkNotNull(this.zza.zza)).zzh() || !zzih.zza(this.zza.zzt).zzh()) {
            this.zzb.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        zzh zzhVarZza = this.zzb.zza(this.zza);
        if (zzhVarZza != null) {
            return zzhVarZza.zzy();
        }
        this.zzb.zzj().zzu().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
