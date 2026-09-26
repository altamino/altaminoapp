package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public class zzbx extends Binder implements IInterface {
    private static zzbz zza;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    protected boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        return false;
    }

    protected zzbx(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 > 16777215) {
            if (super.onTransact(i10, parcel, parcel2, i11)) {
                return true;
            }
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
        }
        return zza(i10, parcel, parcel2, i11);
    }
}
