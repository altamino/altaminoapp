package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.LocationSettingsResult;

/* JADX INFO: loaded from: classes.dex */
final class zzay extends zzan {
    private BaseImplementation.ResultHolder<LocationSettingsResult> zza;

    @Override // com.google.android.gms.internal.location.zzao
    public final void zzb(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.zza.setResult(locationSettingsResult);
        this.zza = null;
    }

    public zzay(BaseImplementation.ResultHolder<LocationSettingsResult> resultHolder) {
        boolean z6;
        if (resultHolder != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        Preconditions.checkArgument(z6, "listener can't be null.");
        this.zza = resultHolder;
    }
}
