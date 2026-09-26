package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public abstract class v extends n implements w {
    @Override // com.google.android.play.integrity.internal.n
    protected final boolean x1(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        Bundle bundle = (Bundle) o.a(parcel, Bundle.CREATOR);
        o.b(parcel);
        v(bundle);
        return true;
    }

    public v() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }
}
