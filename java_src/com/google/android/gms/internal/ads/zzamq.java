package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzamq extends zzfn implements zzamp {
    public zzamq() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzamp zzy(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (iInterfaceQueryLocalInterface instanceof zzamp) {
            return (zzamp) iInterfaceQueryLocalInterface;
        }
        return new zzamr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzams zzamsVarZzcu = zzcu(parcel.readString());
            parcel2.writeNoException();
            zzfo.zza(parcel2, zzamsVarZzcu);
        } else if (i == 2) {
            boolean zZzcv = zzcv(parcel.readString());
            parcel2.writeNoException();
            zzfo.writeBoolean(parcel2, zZzcv);
        } else {
            if (i != 3) {
                return false;
            }
            zzaov zzaovVarZzcy = zzcy(parcel.readString());
            parcel2.writeNoException();
            zzfo.zza(parcel2, zzaovVarZzcy);
        }
        return true;
    }
}
