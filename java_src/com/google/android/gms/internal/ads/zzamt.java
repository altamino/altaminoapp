package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzamt extends zzfn implements zzams {
    public zzamt() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzamv zzamxVar = null;
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzyd zzydVar = (zzyd) zzfo.zza(parcel, zzyd.CREATOR);
                zzxz zzxzVar = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string = parcel.readString();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface;
                    } else {
                        zzamxVar = new zzamx(strongBinder);
                    }
                }
                zza(iObjectWrapperAsInterface, zzydVar, zzxzVar, string, zzamxVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper iObjectWrapperZzse = zzse();
                parcel2.writeNoException();
                zzfo.zza(parcel2, iObjectWrapperZzse);
                return true;
            case 3:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzxz zzxzVar2 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string2 = parcel.readString();
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface2 instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface2;
                    } else {
                        zzamxVar = new zzamx(strongBinder2);
                    }
                }
                zza(iObjectWrapperAsInterface2, zzxzVar2, string2, zzamxVar);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzyd zzydVar2 = (zzyd) zzfo.zza(parcel, zzyd.CREATOR);
                zzxz zzxzVar3 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface3 instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface3;
                    } else {
                        zzamxVar = new zzamx(strongBinder3);
                    }
                }
                zza(iObjectWrapperAsInterface3, zzydVar2, zzxzVar3, string3, string4, zzamxVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzxz zzxzVar4 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface4 instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface4;
                    } else {
                        zzamxVar = new zzamx(strongBinder4);
                    }
                }
                zza(iObjectWrapperAsInterface4, zzxzVar4, string5, string6, zzamxVar);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzxz) zzfo.zza(parcel, zzxz.CREATOR), parcel.readString(), zzatl.zzai(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza((zzxz) zzfo.zza(parcel, zzxz.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zIsInitialized = isInitialized();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsInitialized);
                return true;
            case 14:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzxz zzxzVar5 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string7 = parcel.readString();
                String string8 = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface5 instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface5;
                    } else {
                        zzamxVar = new zzamx(strongBinder5);
                    }
                }
                zza(iObjectWrapperAsInterface5, zzxzVar5, string7, string8, zzamxVar, (zzady) zzfo.zza(parcel, zzady.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                zzana zzanaVarZzsf = zzsf();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzanaVarZzsf);
                return true;
            case 16:
                zzand zzandVarZzsg = zzsg();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzandVarZzsg);
                return true;
            case 17:
                Bundle bundleZzsh = zzsh();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, bundleZzsh);
                return true;
            case 18:
                Bundle interstitialAdapterInfo = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, interstitialAdapterInfo);
                return true;
            case 19:
                Bundle bundleZzsi = zzsi();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, bundleZzsi);
                return true;
            case 20:
                zza((zzxz) zzfo.zza(parcel, zzxz.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zZzsj = zzsj();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zZzsj);
                return true;
            case 23:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzatl.zzai(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                zzafe zzafeVarZzsk = zzsk();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzafeVarZzsk);
                return true;
            case 25:
                setImmersiveMode(zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                zzaar videoController = getVideoController();
                parcel2.writeNoException();
                zzfo.zza(parcel2, videoController);
                return true;
            case 27:
                zzang zzangVarZzsl = zzsl();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzangVarZzsl);
                return true;
            case 28:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzxz zzxzVar6 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                String string9 = parcel.readString();
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    if (iInterfaceQueryLocalInterface6 instanceof zzamv) {
                        zzamxVar = (zzamv) iInterfaceQueryLocalInterface6;
                    } else {
                        zzamxVar = new zzamx(strongBinder6);
                    }
                }
                zzb(iObjectWrapperAsInterface6, zzxzVar6, string9, zzamxVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzair.zzv(parcel.readStrongBinder()), parcel.createTypedArrayList(zzaiw.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
