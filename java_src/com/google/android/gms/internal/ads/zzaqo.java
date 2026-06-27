package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
public final class zzaqo extends zzfn implements zzaqn {
    public static zzaqn zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        if (iInterfaceQueryLocalInterface instanceof zzaqn) {
            return (zzaqn) iInterfaceQueryLocalInterface;
        }
        return new zzaqp(iBinder);
    }
}
