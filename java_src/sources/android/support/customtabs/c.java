package android.support.customtabs;

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
public interface c extends IInterface {
    public static final String DESCRIPTOR = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

    public static abstract class a extends Binder implements c {
        static final int TRANSACTION_onGreatestScrollPercentageIncreased = 3;
        static final int TRANSACTION_onSessionEnded = 4;
        static final int TRANSACTION_onVerticalScrollEvent = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.customtabs.c$a$a, reason: collision with other inner class name */
        private static class C0009a implements c {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0009a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.customtabs.c
            public void b(boolean z6, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.DESCRIPTOR);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.c
            public void c(boolean z6, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.DESCRIPTOR);
                    parcelObtain.writeInt(z6 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.c
            public void d(int i10, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    b.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static c x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(c.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0009a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            String str = c.DESCRIPTOR;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 2) {
                c(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            } else if (i10 == 3) {
                d(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                b(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            }
            return true;
        }

        public a() {
            attachInterface(this, c.DESCRIPTOR);
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

    void b(boolean z6, Bundle bundle) throws RemoteException;

    void c(boolean z6, Bundle bundle) throws RemoteException;

    void d(int i10, Bundle bundle) throws RemoteException;
}
