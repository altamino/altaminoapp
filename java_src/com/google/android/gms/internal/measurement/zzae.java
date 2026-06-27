package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzae extends zzaa.zza {
    private final /* synthetic */ String val$id;
    private final /* synthetic */ zzaa zzar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzae(zzaa zzaaVar, String str) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.val$id = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.setUserId(this.val$id, this.timestamp);
    }
}
