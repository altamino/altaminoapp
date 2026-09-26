package com.coloros.ocs.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.coloros.ocs.base.IServiceBroker";
        static final int TRANSACTION_getBinder = 2;
        static final int TRANSACTION_handleAuthentication = 1;

        public static b y1() {
            return C0147a.sDefaultImpl;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                H(parcel.readString(), parcel.readString(), com.coloros.ocs.base.a.AbstractBinderC0145a.x1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            IBinder iBinderB0 = b0(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iBinderB0);
            return true;
        }

        /* JADX INFO: renamed from: com.coloros.ocs.base.b$a$a, reason: collision with other inner class name */
        static class C0147a implements b {
            public static b sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0147a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.coloros.ocs.base.b
            public void H(String str, String str2, com.coloros.ocs.base.a aVar) throws RemoteException {
                IBinder iBinderAsBinder;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (aVar != null) {
                        iBinderAsBinder = aVar.asBinder();
                    } else {
                        iBinderAsBinder = null;
                    }
                    parcelObtain.writeStrongBinder(iBinderAsBinder);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && a.y1() != null) {
                        a.y1().H(str, str2, aVar);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.ocs.base.b
            public IBinder b0(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && a.y1() != null) {
                        return a.y1().b0(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static b x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0147a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }
    }

    void H(String str, String str2, com.coloros.ocs.base.a aVar) throws RemoteException;

    IBinder b0(String str, String str2) throws RemoteException;
}
