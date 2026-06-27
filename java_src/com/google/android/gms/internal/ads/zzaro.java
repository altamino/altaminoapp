package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzaro extends zzfm implements zzarm {
    zzaro(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final zzari zza(zzarg zzargVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzargVar);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        zzari zzariVar = (zzari) zzfo.zza(parcelTransactAndReadException, zzari.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzariVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zza(zzarg zzargVar, zzarp zzarpVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzargVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzarpVar);
        zza(2, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zza(zzarx zzarxVar, zzarr zzarrVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzarxVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzarrVar);
        zza(4, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzarm
    public final void zzb(zzarx zzarxVar, zzarr zzarrVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzarxVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzarrVar);
        zza(5, parcelObtainAndWriteInterfaceToken);
    }
}
