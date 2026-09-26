package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes7.dex */
final class zzdv extends zzdf.zza {
    private final /* synthetic */ zzcs zzc;
    private final /* synthetic */ zzdf zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdv(zzdf zzdfVar, zzcs zzcsVar) {
        super(zzdfVar);
        this.zzd = zzdfVar;
        this.zzc = zzcsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdf.zza
    final void zza() throws RemoteException {
        ((zzcu) Preconditions.checkNotNull(this.zzd.zzj)).getCachedAppInstanceId(this.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzdf.zza
    protected final void zzb() {
        this.zzc.zza((Bundle) null);
    }
}
