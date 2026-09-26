package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes8.dex */
public abstract class zzi extends zzq implements zzj {
    @Override // com.google.android.gms.internal.play_billing.zzq
    protected final boolean zzb(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzr.zza(parcel, Bundle.CREATOR);
        zzr.zzb(parcel);
        zza(bundle);
        return true;
    }

    public zzi() {
        super("com.android.vending.billing.IInAppBillingIsAlternativeBillingOnlyAvailableCallback");
    }
}
