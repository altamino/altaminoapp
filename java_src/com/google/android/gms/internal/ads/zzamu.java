package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzamu extends zzfm implements zzams {
    zzamu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(1, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final IObjectWrapper zzse() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(2, obtainAndWriteInterfaceToken());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(3, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void showInterstitial() throws RemoteException {
        zza(4, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void destroy() throws RemoteException {
        zza(5, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, zzxz zzxzVar, String str, String str2, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzydVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(6, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, String str2, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(7, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void pause() throws RemoteException {
        zza(8, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void resume() throws RemoteException {
        zza(9, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzatk zzatkVar, String str2) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzatkVar);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zza(10, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(zzxz zzxzVar, String str) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zza(11, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void showVideo() throws RemoteException {
        zza(12, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final boolean isInitialized() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(13, obtainAndWriteInterfaceToken());
        boolean zZza = zzfo.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, String str2, zzamv zzamvVar, zzady zzadyVar, List<String> list) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzadyVar);
        parcelObtainAndWriteInterfaceToken.writeStringList(list);
        zza(14, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzana zzsf() throws RemoteException {
        zzana zzancVar;
        Parcel parcelTransactAndReadException = transactAndReadException(15, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzancVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (iInterfaceQueryLocalInterface instanceof zzana) {
                zzancVar = (zzana) iInterfaceQueryLocalInterface;
            } else {
                zzancVar = new zzanc(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzancVar;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzand zzsg() throws RemoteException {
        zzand zzanfVar;
        Parcel parcelTransactAndReadException = transactAndReadException(16, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzanfVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (iInterfaceQueryLocalInterface instanceof zzand) {
                zzanfVar = (zzand) iInterfaceQueryLocalInterface;
            } else {
                zzanfVar = new zzanf(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzanfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle zzsh() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(17, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfo.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle getInterstitialAdapterInfo() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(18, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfo.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle zzsi() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(19, obtainAndWriteInterfaceToken());
        Bundle bundle = (Bundle) zzfo.zza(parcelTransactAndReadException, Bundle.CREATOR);
        parcelTransactAndReadException.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(zzxz zzxzVar, String str, String str2) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        parcelObtainAndWriteInterfaceToken.writeString(str2);
        zza(20, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(21, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final boolean zzsj() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(22, obtainAndWriteInterfaceToken());
        boolean zZza = zzfo.zza(parcelTransactAndReadException);
        parcelTransactAndReadException.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzatk zzatkVar, List<String> list) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzatkVar);
        parcelObtainAndWriteInterfaceToken.writeStringList(list);
        zza(23, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzafe zzsk() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(24, obtainAndWriteInterfaceToken());
        zzafe zzafeVarZzn = zzaff.zzn(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzafeVarZzn;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.writeBoolean(parcelObtainAndWriteInterfaceToken, z);
        zza(25, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzaar getVideoController() throws RemoteException {
        Parcel parcelTransactAndReadException = transactAndReadException(26, obtainAndWriteInterfaceToken());
        zzaar zzaarVarZzh = zzaas.zzh(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return zzaarVarZzh;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzang zzsl() throws RemoteException {
        zzang zzaniVar;
        Parcel parcelTransactAndReadException = transactAndReadException(27, obtainAndWriteInterfaceToken());
        IBinder strongBinder = parcelTransactAndReadException.readStrongBinder();
        if (strongBinder == null) {
            zzaniVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (iInterfaceQueryLocalInterface instanceof zzang) {
                zzaniVar = (zzang) iInterfaceQueryLocalInterface;
            } else {
                zzaniVar = new zzani(strongBinder);
            }
        }
        parcelTransactAndReadException.recycle();
        return zzaniVar;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzb(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzxzVar);
        parcelObtainAndWriteInterfaceToken.writeString(str);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzamvVar);
        zza(28, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zza(30, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzaiq zzaiqVar, List<zzaiw> list) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzfo.zza(parcelObtainAndWriteInterfaceToken, iObjectWrapper);
        zzfo.zza(parcelObtainAndWriteInterfaceToken, zzaiqVar);
        parcelObtainAndWriteInterfaceToken.writeTypedList(list);
        zza(31, parcelObtainAndWriteInterfaceToken);
    }
}
