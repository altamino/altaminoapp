package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzawb extends zzfn implements zzawa {
    public zzawb() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzavy zzavzVar;
        if (i != 1) {
            return false;
        }
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        zzawc zzawcVar = (zzawc) zzfo.zza(parcel, zzawc.CREATOR);
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzavzVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
            if (iInterfaceQueryLocalInterface instanceof zzavy) {
                zzavzVar = (zzavy) iInterfaceQueryLocalInterface;
            } else {
                zzavzVar = new zzavz(strongBinder);
            }
        }
        zza(iObjectWrapperAsInterface, zzawcVar, zzavzVar);
        parcel2.writeNoException();
        return true;
    }
}
