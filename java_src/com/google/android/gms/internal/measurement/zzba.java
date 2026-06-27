package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzba extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ com.google.android.gms.measurement.internal.zzdb zzbk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzba(zzaa zzaaVar, com.google.android.gms.measurement.internal.zzdb zzdbVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzbk = zzdbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        zzaa.zzc zzcVar = (zzaa.zzc) this.zzar.zzad.get(this.zzbk);
        if (zzcVar == null) {
            Log.w(this.zzar.zzw, "OnEventListener had not been registered.");
        } else {
            this.zzar.zzan.unregisterOnMeasurementEventListener(zzcVar);
            this.zzar.zzad.remove(this.zzbk);
        }
    }
}
