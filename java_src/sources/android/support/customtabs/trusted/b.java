package android.support.customtabs.trusted;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public interface b extends IInterface {
    public static final String DESCRIPTOR = "android$support$customtabs$trusted$ITrustedWebActivityService".replace('$', '.');

    public static abstract class a extends Binder implements b {
        static final int TRANSACTION_areNotificationsEnabled = 6;
        static final int TRANSACTION_cancelNotification = 3;
        static final int TRANSACTION_extraCommand = 9;
        static final int TRANSACTION_getActiveNotifications = 5;
        static final int TRANSACTION_getSmallIconBitmap = 7;
        static final int TRANSACTION_getSmallIconId = 4;
        static final int TRANSACTION_notifyNotificationWithChannel = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.customtabs.trusted.b$a$a, reason: collision with other inner class name */
        private static class C0013a implements b {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0013a(IBinder iBinder) {
                this.mRemote = iBinder;
            }
        }

        public static b x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0013a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = b.DESCRIPTOR;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    Bundle bundleC = C((Bundle) C0014b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0014b.d(parcel2, bundleC, 1);
                    return true;
                case 3:
                    l1((Bundle) C0014b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int iJ1 = j1();
                    parcel2.writeNoException();
                    parcel2.writeInt(iJ1);
                    return true;
                case 5:
                    Bundle bundleS0 = S0();
                    parcel2.writeNoException();
                    C0014b.d(parcel2, bundleS0, 1);
                    return true;
                case 6:
                    Bundle bundleK1 = k1((Bundle) C0014b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0014b.d(parcel2, bundleK1, 1);
                    return true;
                case 7:
                    Bundle bundleT0 = t0();
                    parcel2.writeNoException();
                    C0014b.d(parcel2, bundleT0, 1);
                    return true;
                case 8:
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
                case 9:
                    Bundle bundleO0 = o0(parcel.readString(), (Bundle) C0014b.c(parcel, Bundle.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    C0014b.d(parcel2, bundleO0, 1);
                    return true;
            }
        }

        public a() {
            attachInterface(this, b.DESCRIPTOR);
        }
    }

    /* JADX INFO: renamed from: android.support.customtabs.trusted.b$b, reason: collision with other inner class name */
    public static class C0014b {
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

    Bundle C(Bundle bundle) throws RemoteException;

    Bundle S0() throws RemoteException;

    int j1() throws RemoteException;

    Bundle k1(Bundle bundle) throws RemoteException;

    void l1(Bundle bundle) throws RemoteException;

    Bundle o0(String str, Bundle bundle, IBinder iBinder) throws RemoteException;

    Bundle t0() throws RemoteException;
}
