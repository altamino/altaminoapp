package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzax extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ com.google.android.gms.measurement.internal.zzdb zzbk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzax(zzaa zzaaVar, com.google.android.gms.measurement.internal.zzdb zzdbVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzbk = zzdbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        if (this.zzar.zzad.containsKey(this.zzbk)) {
            Log.w(this.zzar.zzw, "OnEventListener already registered.");
            return;
        }
        zzaa.zzc zzcVar = new zzaa.zzc(this.zzbk);
        this.zzar.zzad.put(this.zzbk, zzcVar);
        this.zzar.zzan.registerOnMeasurementEventListener(zzcVar);
    }
}
