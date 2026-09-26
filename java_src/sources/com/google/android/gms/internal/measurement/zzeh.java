package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes7.dex */
final class zzeh extends zzdf.zza {
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzdf zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeh(zzdf zzdfVar, boolean z6) {
        super(zzdfVar);
        this.zzd = zzdfVar;
        this.zzc = z6;
    }

    @Override // com.google.android.gms.internal.measurement.zzdf.zza
    final void zza() throws RemoteException {
        ((zzcu) Preconditions.checkNotNull(this.zzd.zzj)).setDataCollectionEnabled(this.zzc);
    }
}
