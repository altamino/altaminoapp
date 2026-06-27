package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzac extends zzaa.zza {
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ String zzas;
    private final /* synthetic */ String zzat;
    private final /* synthetic */ Bundle zzau;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzac(zzaa zzaaVar, String str, String str2, Bundle bundle) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzas = str;
        this.zzat = str2;
        this.zzau = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.clearConditionalUserProperty(this.zzas, this.zzat, this.zzau);
    }
}
