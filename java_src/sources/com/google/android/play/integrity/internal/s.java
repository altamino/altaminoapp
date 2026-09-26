package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public final class s extends a implements u {
    s(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.u
    public final void k0(Bundle bundle, w wVar) throws RemoteException {
        Parcel parcelX1 = x1();
        o.c(parcelX1, bundle);
        parcelX1.writeStrongBinder(wVar);
        y1(2, parcelX1);
    }
}
