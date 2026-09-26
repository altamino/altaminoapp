package com.huawei.multimedia.audioengine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: com.huawei.multimedia.audioengine.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0275a extends Binder implements a {
        private static final String DESCRIPTOR = "com.huawei.multimedia.audioengine.IHwAudioEngine";
        static final int TRANSACTION_getSupportedFeatures = 1;
        static final int TRANSACTION_init = 3;
        static final int TRANSACTION_isFeatureSupported = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: com.huawei.multimedia.audioengine.a$a$a, reason: collision with other inner class name */
        private static class C0276a implements a {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0276a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.huawei.multimedia.audioengine.a
            public void r0(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0275a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0276a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                List supportedFeatures = getSupportedFeatures();
                parcel2.writeNoException();
                parcel2.writeList(supportedFeatures);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zW1 = w1(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(zW1 ? 1 : 0);
                return true;
            }
            if (i10 != 3) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            r0(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }

        public AbstractBinderC0275a() {
            attachInterface(this, DESCRIPTOR);
        }
    }

    List getSupportedFeatures() throws RemoteException;

    void r0(String str, String str2) throws RemoteException;

    boolean w1(int i10) throws RemoteException;
}
