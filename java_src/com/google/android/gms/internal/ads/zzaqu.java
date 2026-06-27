package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
public final class zzaqu extends zzfn implements zzaqt {
    public static zzaqt zzaf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        if (iInterfaceQueryLocalInterface instanceof zzaqt) {
            return (zzaqt) iInterfaceQueryLocalInterface;
        }
        return new zzaqv(iBinder);
    }
}
