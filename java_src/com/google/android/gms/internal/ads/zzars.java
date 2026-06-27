package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzars extends zzfn implements zzarr {
    public zzars() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb((ParcelFileDescriptor) zzfo.zza(parcel, ParcelFileDescriptor.CREATOR));
        } else {
            if (i != 2) {
                return false;
            }
            zza((zzaym) zzfo.zza(parcel, zzaym.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
