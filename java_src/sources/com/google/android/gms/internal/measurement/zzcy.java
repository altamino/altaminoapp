package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class zzcy extends zzbx implements zzcv {
    @Override // com.google.android.gms.internal.measurement.zzbx
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
        zzbw.zzb(parcel);
        zza(bundle);
        parcel2.writeNoException();
        return true;
    }

    public zzcy() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }
}
