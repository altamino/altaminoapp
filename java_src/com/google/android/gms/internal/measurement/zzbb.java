package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzbb extends zzaa.zza {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ zzaa zzar;
    private final /* synthetic */ Long zzbm;
    private final /* synthetic */ String zzbn;
    private final /* synthetic */ Bundle zzbo;
    private final /* synthetic */ boolean zzbp;
    private final /* synthetic */ boolean zzbq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbb(zzaa zzaaVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzaaVar);
        this.zzar = zzaaVar;
        this.zzbm = l;
        this.zzao = str;
        this.zzbn = str2;
        this.zzbo = bundle;
        this.zzbp = z;
        this.zzbq = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        Long l = this.zzbm;
        this.zzar.zzan.logEvent(this.zzao, this.zzbn, this.zzbo, this.zzbp, this.zzbq, l == null ? this.timestamp : l.longValue());
    }
}
