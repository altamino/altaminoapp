package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class zzad implements IGmsServiceBroker {
    private final IBinder zza;

    zzad(IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void getService(IGmsCallbacks iGmsCallbacks, @Nullable GetServiceRequest getServiceRequest) throws RemoteException {
        IBinder iBinderAsBinder;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (iGmsCallbacks != null) {
                iBinderAsBinder = iGmsCallbacks.asBinder();
            } else {
                iBinderAsBinder = null;
            }
            parcelObtain.writeStrongBinder(iBinderAsBinder);
            if (getServiceRequest != null) {
                parcelObtain.writeInt(1);
                zzn.zza(getServiceRequest, parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zza.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
