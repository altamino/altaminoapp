package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f1428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1429b;

    protected a(IBinder iBinder, String str) {
        this.f1428a = iBinder;
        this.f1429b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1428a;
    }

    protected final void y1(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f1428a.transact(i10, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    protected final Parcel x1() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f1429b);
        return parcelObtain;
    }
}
