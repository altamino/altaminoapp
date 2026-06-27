package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public abstract class zzafs extends zzfn implements zzafr {
    public zzafs() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    public static zzafr zzr(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
        if (iInterfaceQueryLocalInterface instanceof zzafr) {
            return (zzafr) iInterfaceQueryLocalInterface;
        }
        return new zzaft(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzafe zzafgVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzafgVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            if (iInterfaceQueryLocalInterface instanceof zzafe) {
                zzafgVar = (zzafe) iInterfaceQueryLocalInterface;
            } else {
                zzafgVar = new zzafg(strongBinder);
            }
        }
        zzb(zzafgVar);
        parcel2.writeNoException();
        return true;
    }
}
