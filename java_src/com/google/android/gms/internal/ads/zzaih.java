package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzaih extends zzfm implements zzaig {
    zzaih(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final void zza(zzaia zzaiaVar, zzaie zzaieVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaiaVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaieVar);
        zzb(2, parcelObtainAndWriteInterfaceToken);
    }
}
