package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzai extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ long zzba;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzai(zzaa zzaaVar, long j) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzba = j;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.setMinimumSessionDuration(this.zzba);
    }
}
