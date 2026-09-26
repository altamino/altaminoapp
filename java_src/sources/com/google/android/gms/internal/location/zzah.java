package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzah extends zzb implements zzai {
    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzb((zzaa) zzc.zzb(parcel, zzaa.CREATOR));
        } else {
            if (i10 != 2) {
                return false;
            }
            zzc();
        }
        return true;
    }

    public zzah() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }
}
