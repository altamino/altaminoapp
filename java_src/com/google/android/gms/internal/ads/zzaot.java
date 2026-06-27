package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzaot extends zzfn implements zzaos {
    public zzaot() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            zzsw();
        } else {
            if (i != 3) {
                return false;
            }
            zzdb(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
