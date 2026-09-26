package com.huawei.multimedia.audioengine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature";
        static final int TRANSACTION_enableKaraokeFeature = 2;
        static final int TRANSACTION_getKaraokeLatency = 3;
        static final int TRANSACTION_init = 5;
        static final int TRANSACTION_isKaraokeFeatureSupport = 1;
        static final int TRANSACTION_setParameter = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: com.huawei.multimedia.audioengine.b$a$a, reason: collision with other inner class name */
        private static class C0277a implements b {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0277a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.huawei.multimedia.audioengine.b
            public int G0(String str, int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.multimedia.audioengine.b
            public void S(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.multimedia.audioengine.b
            public int X0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.multimedia.audioengine.b
            public boolean Y0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    boolean z6 = false;
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        z6 = true;
                    }
                    return z6;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.huawei.multimedia.audioengine.b
            public int x0(boolean z6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0277a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zY0 = Y0();
                parcel2.writeNoException();
                parcel2.writeInt(zY0 ? 1 : 0);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int iX0 = x0(parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeInt(iX0);
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                int iX1 = X0();
                parcel2.writeNoException();
                parcel2.writeInt(iX1);
                return true;
            }
            if (i10 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                int iG0 = G0(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(iG0);
                return true;
            }
            if (i10 != 5) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            S(parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }
    }

    int G0(String str, int i10) throws RemoteException;

    void S(String str) throws RemoteException;

    int X0() throws RemoteException;

    boolean Y0() throws RemoteException;

    int x0(boolean z6) throws RemoteException;
}
