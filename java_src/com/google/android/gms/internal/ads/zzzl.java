package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzzl extends zzfn implements zzzk {
    public zzzl() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzzk zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (iInterfaceQueryLocalInterface instanceof zzzk) {
            return (zzzk) iInterfaceQueryLocalInterface;
        }
        return new zzzm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzyz zzzbVar = null;
        zzzp zzzrVar = null;
        zzzy zzaaaVar = null;
        zzyw zzyyVar = null;
        zzzs zzzuVar = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperZzpl = zzpl();
                parcel2.writeNoException();
                zzfo.zza(parcel2, iObjectWrapperZzpl);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zIsReady = isReady();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsReady);
                return true;
            case 4:
                boolean zZzb = zzb((zzxz) zzfo.zza(parcel, zzxz.CREATOR));
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zZzb);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (iInterfaceQueryLocalInterface instanceof zzyz) {
                        zzzbVar = (zzyz) iInterfaceQueryLocalInterface;
                    } else {
                        zzzbVar = new zzzb(strongBinder);
                    }
                }
                zzb(zzzbVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (iInterfaceQueryLocalInterface2 instanceof zzzs) {
                        zzzuVar = (zzzs) iInterfaceQueryLocalInterface2;
                    } else {
                        zzzuVar = new zzzu(strongBinder2);
                    }
                }
                zza(zzzuVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzpm();
                parcel2.writeNoException();
                return true;
            case 12:
                zzyd zzydVarZzpn = zzpn();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, zzydVarZzpn);
                return true;
            case 13:
                zza((zzyd) zzfo.zza(parcel, zzyd.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzaqo.zzad(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zza(zzaqu.zzaf(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                zza(zzadp.zzi(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (iInterfaceQueryLocalInterface3 instanceof zzyw) {
                        zzyyVar = (zzyw) iInterfaceQueryLocalInterface3;
                    } else {
                        zzyyVar = new zzyy(strongBinder3);
                    }
                }
                zza(zzyyVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (iInterfaceQueryLocalInterface4 instanceof zzzy) {
                        zzaaaVar = (zzzy) iInterfaceQueryLocalInterface4;
                    } else {
                        zzaaaVar = new zzaaa(strongBinder4);
                    }
                }
                zzb(zzaaaVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zIsLoading = isLoading();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsLoading);
                return true;
            case 24:
                zza(zzatc.zzah(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzaar videoController = getVideoController();
                parcel2.writeNoException();
                zzfo.zza(parcel2, videoController);
                return true;
            case 29:
                zza((zzacd) zzfo.zza(parcel, zzacd.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzaax) zzfo.zza(parcel, zzaax.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                zzzs zzzsVarZzpo = zzpo();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzzsVarZzpo);
                return true;
            case 33:
                zzyz zzyzVarZzpp = zzpp();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzyzVarZzpp);
                return true;
            case 34:
                setImmersiveMode(zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String strZzpj = zzpj();
                parcel2.writeNoException();
                parcel2.writeString(strZzpj);
                return true;
            case 36:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (iInterfaceQueryLocalInterface5 instanceof zzzp) {
                        zzzrVar = (zzzp) iInterfaceQueryLocalInterface5;
                    } else {
                        zzzrVar = new zzzr(strongBinder5);
                    }
                }
                zza(zzzrVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, adMetadata);
                return true;
            case 38:
                zzbt(parcel.readString());
                parcel2.writeNoException();
                return true;
        }
    }
}
