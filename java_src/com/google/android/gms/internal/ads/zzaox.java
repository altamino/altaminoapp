package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public final class zzaox extends zzfm implements zzaov {
    zzaox(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzyd zzydVar, zzaoy zzaoyVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, bundle);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, bundle2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaoyVar);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzapj zzsx() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        zzapj zzapjVar = (zzapj) zzfo.zza(parcelTransactAndReadException, zzapj.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzapjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzapj zzsy() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(3, obtainAndWriteInterfaceToken());
        zzapj zzapjVar = (zzapj) zzfo.zza(parcelTransactAndReadException, zzapj.CREATOR);
        parcelTransactAndReadException.recycle();
        return zzapjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzaar getVideoController() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(5, obtainAndWriteInterfaceToken());
        zzaar zzaarVarZzh = zzaas.zzh(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaarVarZzh;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zzx(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(10, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String[] strArr, Bundle[] bundleArr) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeStringArray(strArr);
        parcelObtainAndWriteInterfaceToken.writeTypedArray(bundleArr, 0);
        zza(11, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaoj zzaojVar, zzamv zzamvVar, zzyd zzydVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaojVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        zza(13, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaom zzaomVar, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaomVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(14, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final boolean zzy(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(15, parcelObtainAndWriteInterfaceToken);
        boolean zZza = zzfo.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaos zzaosVar, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaosVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(16, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final boolean zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(17, parcelObtainAndWriteInterfaceToken);
        boolean zZza = zzfo.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaop zzaopVar, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaopVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(18, parcelObtainAndWriteInterfaceToken);
    }
}
