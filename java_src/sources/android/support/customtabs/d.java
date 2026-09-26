package android.support.customtabs;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public interface d extends IInterface {
    public static final String DESCRIPTOR = "android$support$customtabs$IPostMessageService".replace('$', '.');

    public static abstract class a extends Binder implements d {
        static final int TRANSACTION_onMessageChannelReady = 2;
        static final int TRANSACTION_onPostMessage = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.customtabs.d$a$a, reason: collision with other inner class name */
        private static class C0010a implements d {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0010a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.customtabs.d
            public void u(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(d.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static d x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(d.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new C0010a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = d.DESCRIPTOR;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 2) {
                u(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Bundle) b.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                f1(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }

        public a() {
            attachInterface(this, d.DESCRIPTOR);
        }
    }

    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void d(Parcel parcel, T t5, int i10) {
            if (t5 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t5.writeToParcel(parcel, i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T c(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void f1(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException;

    void u(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException;
}
