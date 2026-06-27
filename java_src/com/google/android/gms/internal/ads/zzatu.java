package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzatu extends zzfn implements zzatt {
    public zzatu() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzatt zzak(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (iInterfaceQueryLocalInterface instanceof zzatt) {
            return (zzatt) iInterfaceQueryLocalInterface;
        }
        return new zzatv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaub zzaudVar = null;
        zzaue zzaufVar = null;
        zzatw zzatyVar = null;
        switch (i) {
            case 1:
                zzxz zzxzVar = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (iInterfaceQueryLocalInterface instanceof zzaub) {
                        zzaudVar = (zzaub) iInterfaceQueryLocalInterface;
                    } else {
                        zzaudVar = new zzaud(strongBinder);
                    }
                }
                zza(zzxzVar, zzaudVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (iInterfaceQueryLocalInterface2 instanceof zzatw) {
                        zzatyVar = (zzatw) iInterfaceQueryLocalInterface2;
                    } else {
                        zzatyVar = new zzaty(strongBinder2);
                    }
                }
                zza(zzatyVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zIsLoaded = isLoaded();
                parcel2.writeNoException();
                zzfo.writeBoolean(parcel2, zIsLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (iInterfaceQueryLocalInterface3 instanceof zzaue) {
                        zzaufVar = (zzaue) iInterfaceQueryLocalInterface3;
                    } else {
                        zzaufVar = new zzauf(strongBinder3);
                    }
                }
                zza(zzaufVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzaum) zzfo.zza(parcel, zzaum.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzaap.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                zzfo.zzb(parcel2, adMetadata);
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzfo.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzatq zzatqVarZzqh = zzqh();
                parcel2.writeNoException();
                zzfo.zza(parcel2, zzatqVarZzqh);
                return true;
            default:
                return false;
        }
    }
}
