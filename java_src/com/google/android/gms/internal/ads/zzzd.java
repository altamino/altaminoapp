package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzzd extends zzfn implements zzzc {
    public zzzd() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((zzxz) zzfo.zza(parcel, zzxz.CREATOR));
            parcel2.writeNoException();
        } else if (i == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
        } else if (i == 3) {
            boolean zIsLoading = isLoading();
            parcel2.writeNoException();
            zzfo.writeBoolean(parcel2, zIsLoading);
        } else if (i == 4) {
            String strZzpj = zzpj();
            parcel2.writeNoException();
            parcel2.writeString(strZzpj);
        } else {
            if (i != 5) {
                return false;
            }
            zza((zzxz) zzfo.zza(parcel, zzxz.CREATOR), parcel.readInt());
            parcel2.writeNoException();
        }
        return true;
    }
}
