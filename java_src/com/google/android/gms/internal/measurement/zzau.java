package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzau extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ zzm zzaw;
    private final /* synthetic */ Bundle zzbj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzau(zzaa zzaaVar, Bundle bundle, zzm zzmVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzbj = bundle;
        this.zzaw = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.performAction(this.zzbj, this.zzaw, this.timestamp);
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    protected final void zzm() {
        this.zzaw.zzb((Bundle) null);
    }
}
