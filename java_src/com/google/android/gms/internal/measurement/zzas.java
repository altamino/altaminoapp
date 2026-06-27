package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzas extends zzaa.zza {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ zzm zzaw;
    private final /* synthetic */ boolean zzbd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzas(zzaa zzaaVar, String str, String str2, boolean z, zzm zzmVar) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzao = str;
        this.zzav = str2;
        this.zzbd = z;
        this.zzaw = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        this.zzar.zzan.getUserProperties(this.zzao, this.zzav, this.zzbd, this.zzaw);
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    protected final void zzm() {
        this.zzaw.zzb((Bundle) null);
    }
}
