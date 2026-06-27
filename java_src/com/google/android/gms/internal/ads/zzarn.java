package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzarn extends zzfn implements zzarm {
    public zzarn() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            zzarp zzarqVar = null;
            zzarr zzartVar = null;
            zzarr zzartVar2 = null;
            if (i == 2) {
                zzarg zzargVar = (zzarg) zzfo.zza(parcel, zzarg.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (iInterfaceQueryLocalInterface instanceof zzarp) {
                        zzarqVar = (zzarp) iInterfaceQueryLocalInterface;
                    } else {
                        zzarqVar = new zzarq(strongBinder);
                    }
                }
                zza(zzargVar, zzarqVar);
                parcel2.writeNoException();
            } else if (i == 4) {
                zzarx zzarxVar = (zzarx) zzfo.zza(parcel, zzarx.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (iInterfaceQueryLocalInterface2 instanceof zzarr) {
                        zzartVar2 = (zzarr) iInterfaceQueryLocalInterface2;
                    } else {
                        zzartVar2 = new zzart(strongBinder2);
                    }
                }
                zza(zzarxVar, zzartVar2);
                parcel2.writeNoException();
            } else {
                if (i != 5) {
                    return false;
                }
                zzarx zzarxVar2 = (zzarx) zzfo.zza(parcel, zzarx.CREATOR);
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (iInterfaceQueryLocalInterface3 instanceof zzarr) {
                        zzartVar = (zzarr) iInterfaceQueryLocalInterface3;
                    } else {
                        zzartVar = new zzart(strongBinder3);
                    }
                }
                zzb(zzarxVar2, zzartVar);
                parcel2.writeNoException();
            }
        } else {
            zzari zzariVarZza = zza((zzarg) zzfo.zza(parcel, zzarg.CREATOR));
            parcel2.writeNoException();
            zzfo.zzb(parcel2, zzariVarZza);
        }
        return true;
    }
}
