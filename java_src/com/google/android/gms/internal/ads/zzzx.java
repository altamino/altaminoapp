package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public final class zzzx extends zzfm implements zzzv {
    zzzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzzk zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, String str, zzamp zzampVar, int i) throws RemoteException {
        zzzk zzzmVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzampVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzzmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (iInterfaceQueryLocalInterface instanceof zzzk) {
                zzzmVar = (zzzk) iInterfaceQueryLocalInterface;
            } else {
                zzzmVar = new zzzm(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzzk zzb(IObjectWrapper iObjectWrapper, zzyd zzydVar, String str, zzamp zzampVar, int i) throws RemoteException {
        zzzk zzzmVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzampVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(2, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzzmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (iInterfaceQueryLocalInterface instanceof zzzk) {
                zzzmVar = (zzzk) iInterfaceQueryLocalInterface;
            } else {
                zzzmVar = new zzzm(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzzf zza(IObjectWrapper iObjectWrapper, String str, zzamp zzampVar, int i) throws RemoteException {
        zzzf zzzhVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzampVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(3, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzzhVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (iInterfaceQueryLocalInterface instanceof zzzf) {
                zzzhVar = (zzzf) iInterfaceQueryLocalInterface;
            } else {
                zzzhVar = new zzzh(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzzhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaab zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzaab zzaadVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(4, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzaadVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (iInterfaceQueryLocalInterface instanceof zzaab) {
                zzaadVar = (zzaab) iInterfaceQueryLocalInterface;
            } else {
                zzaadVar = new zzaad(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzaadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaem zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper2);
        Parcel parcelTransactAndReadException = transactAndReadException(5, parcelObtainAndWriteInterfaceToken);
        zzaem zzaemVarZzl = zzaen.zzl(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaemVarZzl;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzasw zza(IObjectWrapper iObjectWrapper, zzamp zzampVar, int i) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzampVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(6, parcelObtainAndWriteInterfaceToken);
        zzasw zzaswVarZzag = zzasx.zzag(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaswVarZzag;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaqq zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(7, parcelObtainAndWriteInterfaceToken);
        zzaqq zzaqqVarZzae = zzaqr.zzae(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaqqVarZzae;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaqg zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        Parcel parcelTransactAndReadException = transactAndReadException(8, parcelObtainAndWriteInterfaceToken);
        zzaqg zzaqgVarZzac = zzaqh.zzac(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaqgVarZzac;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaab zza(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzaab zzaadVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(9, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzaadVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (iInterfaceQueryLocalInterface instanceof zzaab) {
                zzaadVar = (zzaab) iInterfaceQueryLocalInterface;
            } else {
                zzaadVar = new zzaad(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzaadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzzk zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, String str, int i) throws RemoteException {
        zzzk zzzmVar;
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(10, parcelObtainAndWriteInterfaceToken);
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzzmVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (iInterfaceQueryLocalInterface instanceof zzzk) {
                zzzmVar = (zzzk) iInterfaceQueryLocalInterface;
            } else {
                zzzmVar = new zzzm(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzaer zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper3);
        Parcel parcelTransactAndReadException = transactAndReadException(11, parcelObtainAndWriteInterfaceToken);
        zzaer zzaerVarZzm = zzaes.zzm(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaerVarZzm;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final zzatt zzb(IObjectWrapper iObjectWrapper, String str, zzamp zzampVar, int i) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzampVar);
        parcelObtainAndWriteInterfaceToken.writeInt(i);
        Parcel parcelTransactAndReadException = transactAndReadException(12, parcelObtainAndWriteInterfaceToken);
        zzatt zzattVarZzak = zzatu.zzak(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzattVarZzak;
    }
}
