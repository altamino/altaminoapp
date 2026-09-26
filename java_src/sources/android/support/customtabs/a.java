package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public interface a extends IInterface {
    public static final String DESCRIPTOR = "android$support$customtabs$ICustomTabsCallback".replace('$', '.');

    /* JADX INFO: renamed from: android.support.customtabs.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0005a extends Binder implements a {
        static final int TRANSACTION_extraCallback = 3;
        static final int TRANSACTION_extraCallbackWithResult = 7;
        static final int TRANSACTION_onActivityLayout = 10;
        static final int TRANSACTION_onActivityResized = 8;
        static final int TRANSACTION_onMessageChannelReady = 4;
        static final int TRANSACTION_onMinimized = 11;
        static final int TRANSACTION_onNavigationEvent = 2;
        static final int TRANSACTION_onPostMessage = 5;
        static final int TRANSACTION_onRelationshipValidationResult = 6;
        static final int TRANSACTION_onUnminimized = 12;
        static final int TRANSACTION_onWarmupCompleted = 9;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.customtabs.a$a$a, reason: collision with other inner class name */
        private static class C0006a implements a {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0006a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.customtabs.a
            public void C0(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void E0(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void W(int i10, int i11, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void c0(int i10, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void c1(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void e1(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void k(int i10, int i11, int i12, int i13, int i14, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeInt(i14);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public Bundle p(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (Bundle) b.c(parcelObtain2, Bundle.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void p1(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void r1(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.a
            public void s1(int i10, Uri uri, boolean z6, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    b.d(parcelObtain, uri, 0);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static a x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0006a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = a.DESCRIPTOR;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    c0(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 3:
                    C0(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 4:
                    r1((Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    p1(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    s1(parcel.readInt(), (Uri) b.c(parcel, Uri.CREATOR), parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 7:
                    Bundle bundleP = p(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    b.d(parcel2, bundleP, 1);
                    return true;
                case 8:
                    W(parcel.readInt(), parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 9:
                    E0((Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 10:
                    k(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 11:
                    c1((Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 12:
                    e1((Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        public AbstractBinderC0005a() {
            attachInterface(this, a.DESCRIPTOR);
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

    void C0(String str, Bundle bundle) throws RemoteException;

    void E0(Bundle bundle) throws RemoteException;

    void W(int i10, int i11, Bundle bundle) throws RemoteException;

    void c0(int i10, Bundle bundle) throws RemoteException;

    void c1(Bundle bundle) throws RemoteException;

    void e1(Bundle bundle) throws RemoteException;

    void k(int i10, int i11, int i12, int i13, int i14, Bundle bundle) throws RemoteException;

    Bundle p(String str, Bundle bundle) throws RemoteException;

    void p1(String str, Bundle bundle) throws RemoteException;

    void r1(Bundle bundle) throws RemoteException;

    void s1(int i10, Uri uri, boolean z6, Bundle bundle) throws RemoteException;
}
