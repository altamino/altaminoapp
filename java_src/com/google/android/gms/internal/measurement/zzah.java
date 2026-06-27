package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzah extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzah(zzaa zzaaVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.resetAnalyticsData(this.timestamp);
    }
}
