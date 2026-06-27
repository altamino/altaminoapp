package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzdbg extends zzfm implements zzdbf {
    zzdbg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final zzdbd zza(zzdbb zzdbbVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzdbbVar);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        zzdbd zzdbdVar = (zzdbd) zzfo.zza(parcelTransactAndReadException, zzdbd.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zza(zzday zzdayVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzdayVar);
        zza(2, parcelObtainAndWriteInterfaceToken);
    }
}
