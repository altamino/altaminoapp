package com.google.android.finsky.externalreferrer;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.google.android.finsky.externalreferrer.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0187a extends Binder implements a {
        private static final String DESCRIPTOR = "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";
        static final int TRANSACTION_getInstallReferrer = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: com.google.android.finsky.externalreferrer.a$a$a, reason: collision with other inner class name */
        private static class C0188a implements a {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0188a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.google.android.finsky.externalreferrer.a
            public Bundle p0(Bundle bundle) throws RemoteException {
                Bundle bundle2;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0187a.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0188a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            Bundle bundleP0 = p0(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            if (bundleP0 != null) {
                parcel2.writeInt(1);
                bundleP0.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }

        public AbstractBinderC0187a() {
            attachInterface(this, DESCRIPTOR);
        }
    }

    Bundle p0(Bundle bundle) throws RemoteException;
}
