package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes2.dex */
final /* synthetic */ class zzauk implements zzbaf {
    static final zzbaf zzbzd = new zzauk();

    private zzauk() {
    }

    @Override // com.google.android.gms.internal.ads.zzbaf
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return iInterfaceQueryLocalInterface instanceof zzatz ? (zzatz) iInterfaceQueryLocalInterface : new zzaua(iBinder);
    }
}
