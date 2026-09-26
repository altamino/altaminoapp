package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes7.dex */
public final class zzdc extends zzbu implements zzda {
    @Override // com.google.android.gms.internal.measurement.zzda
    public final int zza() throws RemoteException {
        Parcel parcelZza = zza(2, a_());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    zzdc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzda
    public final void zza(String str, String str2, Bundle bundle, long j6) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j6);
        zzb(1, parcelA_);
    }
}
