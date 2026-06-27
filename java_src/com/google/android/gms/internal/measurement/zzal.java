package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzal extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ String zzbb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzal(zzaa zzaaVar, String str) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzbb = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.endAdUnitExposure(this.zzbb, this.zzbs);
    }
}
