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
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo
public interface b extends IInterface {
    public static final String DESCRIPTOR = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    public static abstract class a extends Binder implements b {
        static final int TRANSACTION_extraCommand = 5;
        static final int TRANSACTION_isEngagementSignalsApiAvailable = 13;
        static final int TRANSACTION_mayLaunchUrl = 4;
        static final int TRANSACTION_newSession = 3;
        static final int TRANSACTION_newSessionWithExtras = 10;
        static final int TRANSACTION_postMessage = 8;
        static final int TRANSACTION_receiveFile = 12;
        static final int TRANSACTION_requestPostMessageChannel = 7;
        static final int TRANSACTION_requestPostMessageChannelWithExtras = 11;
        static final int TRANSACTION_setEngagementSignalsCallback = 14;
        static final int TRANSACTION_updateVisuals = 6;
        static final int TRANSACTION_validateRelationship = 9;
        static final int TRANSACTION_warmup = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.customtabs.b$a$a, reason: collision with other inner class name */
        private static class C0007a implements b {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0007a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.customtabs.b
            public boolean A0(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    boolean z6 = false;
                    C0008b.f(parcelObtain, bundle, 0);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public boolean Q(android.support.customtabs.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    boolean z6 = false;
                    C0008b.f(parcelObtain, uri, 0);
                    C0008b.f(parcelObtain, bundle, 0);
                    C0008b.e(parcelObtain, list, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public boolean V(long j6) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeLong(j6);
                    boolean z6 = false;
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public int X(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeString(str);
                    C0008b.f(parcelObtain, bundle, 0);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.b
            public boolean a0(android.support.customtabs.a aVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    boolean z6 = false;
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public boolean i(android.support.customtabs.a aVar, int i10, Uri uri, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeInt(i10);
                    boolean z6 = false;
                    C0008b.f(parcelObtain, uri, 0);
                    C0008b.f(parcelObtain, bundle, 0);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public boolean o1(android.support.customtabs.a aVar, Uri uri) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    boolean z6 = false;
                    C0008b.f(parcelObtain, uri, 0);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
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

            @Override // android.support.customtabs.b
            public boolean z0(android.support.customtabs.a aVar, Uri uri, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(aVar);
                    boolean z6 = false;
                    C0008b.f(parcelObtain, uri, 0);
                    C0008b.f(parcelObtain, bundle, 0);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
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
        }

        public static b x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0007a(iBinder) : (b) iInterfaceQueryLocalInterface;
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
                    boolean zV = V(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zV ? 1 : 0);
                    return true;
                case 3:
                    boolean zA0 = a0(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zA0 ? 1 : 0);
                    return true;
                case 4:
                    android.support.customtabs.a aVarX1 = android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder());
                    Uri uri = (Uri) C0008b.d(parcel, Uri.CREATOR);
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean zQ = Q(aVarX1, uri, (Bundle) C0008b.d(parcel, creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(zQ ? 1 : 0);
                    return true;
                case 5:
                    Bundle bundleL0 = l0(parcel.readString(), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0008b.f(parcel2, bundleL0, 1);
                    return true;
                case 6:
                    boolean zD = D(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zD ? 1 : 0);
                    return true;
                case 7:
                    boolean zO1 = o1(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Uri) C0008b.d(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zO1 ? 1 : 0);
                    return true;
                case 8:
                    int iX = X(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), parcel.readString(), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iX);
                    return true;
                case 9:
                    boolean zI = i(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), parcel.readInt(), (Uri) C0008b.d(parcel, Uri.CREATOR), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zI ? 1 : 0);
                    return true;
                case 10:
                    boolean zA1 = A0(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zA1 ? 1 : 0);
                    return true;
                case 11:
                    boolean zZ0 = z0(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Uri) C0008b.d(parcel, Uri.CREATOR), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zZ0 ? 1 : 0);
                    return true;
                case 12:
                    boolean zM = m(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Uri) C0008b.d(parcel, Uri.CREATOR), parcel.readInt(), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zM ? 1 : 0);
                    return true;
                case 13:
                    boolean zT1 = t1(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zT1 ? 1 : 0);
                    return true;
                case 14:
                    boolean zA = A(android.support.customtabs.a.AbstractBinderC0005a.x1(parcel.readStrongBinder()), parcel.readStrongBinder(), (Bundle) C0008b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        public a() {
            attachInterface(this, b.DESCRIPTOR);
        }
    }

    /* JADX INFO: renamed from: android.support.customtabs.b$b, reason: collision with other inner class name */
    public static class C0008b {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void e(Parcel parcel, List<T> list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, list.get(i11), i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void f(Parcel parcel, T t5, int i10) {
            if (t5 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t5.writeToParcel(parcel, i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T d(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    boolean A(android.support.customtabs.a aVar, IBinder iBinder, Bundle bundle) throws RemoteException;

    boolean A0(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException;

    boolean D(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException;

    boolean Q(android.support.customtabs.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    boolean V(long j6) throws RemoteException;

    int X(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException;

    boolean a0(android.support.customtabs.a aVar) throws RemoteException;

    boolean i(android.support.customtabs.a aVar, int i10, Uri uri, Bundle bundle) throws RemoteException;

    Bundle l0(String str, Bundle bundle) throws RemoteException;

    boolean m(android.support.customtabs.a aVar, Uri uri, int i10, Bundle bundle) throws RemoteException;

    boolean o1(android.support.customtabs.a aVar, Uri uri) throws RemoteException;

    boolean t1(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException;

    boolean z0(android.support.customtabs.a aVar, Uri uri, Bundle bundle) throws RemoteException;
}
