package com.google.firebase.dynamiclinks.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface h extends IInterface {

    public static abstract class a extends Binder implements h {
        private static final String DESCRIPTOR = "com.google.firebase.dynamiclinks.internal.IDynamicLinksService";
        static final int TRANSACTION_createShortDynamicLink = 2;
        static final int TRANSACTION_getDynamicLink = 1;

        public static h y1() {
            return C0254a.sDefaultImpl;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
                y0(g.a.x1(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
                return true;
            }
            parcel.enforceInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
            P(g.a.x1(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        /* JADX INFO: renamed from: com.google.firebase.dynamiclinks.internal.h$a$a, reason: collision with other inner class name */
        private static class C0254a implements h {
            public static h sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0254a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.google.firebase.dynamiclinks.internal.h
            public void y0(g gVar, String str) throws RemoteException {
                IBinder iBinderAsBinder;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
                    if (gVar != null) {
                        iBinderAsBinder = gVar.asBinder();
                    } else {
                        iBinderAsBinder = null;
                    }
                    parcelObtain.writeStrongBinder(iBinderAsBinder);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && a.y1() != null) {
                        a.y1().y0(gVar, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static h x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof h)) ? new C0254a(iBinder) : (h) iInterfaceQueryLocalInterface;
        }

        public a() {
            attachInterface(this, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
        }
    }

    void P(g gVar, Bundle bundle) throws RemoteException;

    void y0(g gVar, String str) throws RemoteException;
}
