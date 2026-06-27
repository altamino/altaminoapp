package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzckp extends zzaok {
    private zzcjy<zzaov, zzcla> zzfzw;
    private final /* synthetic */ zzckm zzfzx;

    private zzckp(zzckm zzckmVar, zzcjy zzcjyVar) {
        this.zzfzx = zzckmVar;
        this.zzfzw = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaoj
    public final void zzw(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzfzx.view = (View) ObjectWrapper.unwrap(iObjectWrapper);
        ((zzcla) this.zzfzw.zzfzn).onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzaoj
    public final void zzdb(String str) throws RemoteException {
        ((zzcla) this.zzfzw.zzfzn).onAdFailedToLoad(0);
    }
}
