package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
public abstract class zzfy extends zzfn implements zzfx {
    public static zzfx zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        if (iInterfaceQueryLocalInterface instanceof zzfx) {
            return (zzfx) iInterfaceQueryLocalInterface;
        }
        return new zzfz(iBinder);
    }
}
