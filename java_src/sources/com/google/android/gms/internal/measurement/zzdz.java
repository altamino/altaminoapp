package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes7.dex */
final class zzdz extends zzdf.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ zzcs zzf;
    private final /* synthetic */ zzdf zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdz(zzdf zzdfVar, String str, String str2, boolean z6, zzcs zzcsVar) {
        super(zzdfVar);
        this.zzg = zzdfVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = z6;
        this.zzf = zzcsVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdf.zza
    final void zza() throws RemoteException {
        ((zzcu) Preconditions.checkNotNull(this.zzg.zzj)).getUserProperties(this.zzc, this.zzd, this.zze, this.zzf);
    }

    @Override // com.google.android.gms.internal.measurement.zzdf.zza
    protected final void zzb() {
        this.zzf.zza((Bundle) null);
    }
}
