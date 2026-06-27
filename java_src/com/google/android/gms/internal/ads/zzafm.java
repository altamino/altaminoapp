package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzafm extends zzfn implements zzafl {
    public zzafm() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    public static zzafl zzp(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        if (iInterfaceQueryLocalInterface instanceof zzafl) {
            return (zzafl) iInterfaceQueryLocalInterface;
        }
        return new zzafn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzafa zzafcVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzafcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            if (iInterfaceQueryLocalInterface instanceof zzafa) {
                zzafcVar = (zzafa) iInterfaceQueryLocalInterface;
            } else {
                zzafcVar = new zzafc(strongBinder);
            }
        }
        zza(zzafcVar);
        parcel2.writeNoException();
        return true;
    }
}
