package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzag extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ boolean zzaz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzag(zzaa zzaaVar, boolean z) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzaz = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.setMeasurementEnabled(this.zzaz, this.timestamp);
    }
}
