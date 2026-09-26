package com.coloros.ocs.mediaunit;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes6.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.coloros.ocs.mediaunit.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0150a extends Binder implements a {
        private static final String DESCRIPTOR = "com.coloros.ocs.mediaunit.IKaraokeService";
        static final int TRANSACTION_abandonAudioLoopback = 2;
        static final int TRANSACTION_requestAudioLoopback = 1;

        public static a y1() {
            return C0151a.sDefaultImpl;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                int iN = N(parcel.readStrongBinder(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iN);
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
            int iX = x(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iX);
            return true;
        }

        /* JADX INFO: renamed from: com.coloros.ocs.mediaunit.a$a$a, reason: collision with other inner class name */
        private static class C0151a implements a {
            public static a sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0151a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.coloros.ocs.mediaunit.a
            public int N(IBinder iBinder, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0150a.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0150a.y1() != null) {
                        return AbstractBinderC0150a.y1().N(iBinder, str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.coloros.ocs.mediaunit.a
            public int x(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0150a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && AbstractBinderC0150a.y1() != null) {
                        return AbstractBinderC0150a.y1().x(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0151a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public AbstractBinderC0150a() {
            attachInterface(this, DESCRIPTOR);
        }
    }

    int N(IBinder iBinder, String str) throws RemoteException;

    int x(String str) throws RemoteException;
}
