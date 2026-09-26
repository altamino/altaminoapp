package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class zzcz extends zzbx implements zzda {
    @Override // com.google.android.gms.internal.measurement.zzbx
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
            long j6 = parcel.readLong();
            zzbw.zzb(parcel);
            zza(string, string2, bundle, j6);
            parcel2.writeNoException();
        } else {
            if (i10 != 2) {
                return false;
            }
            int iZza = zza();
            parcel2.writeNoException();
            parcel2.writeInt(iZza);
        }
        return true;
    }

    public zzcz() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }
}
