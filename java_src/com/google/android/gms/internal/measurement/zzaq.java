package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzaq extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ zzm zzaw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaq(zzaa zzaaVar, zzm zzmVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzaw = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.getCurrentScreenName(this.zzaw);
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    protected final void zzm() {
        this.zzaw.zzb((Bundle) null);
    }
}
