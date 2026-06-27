package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzbte implements Runnable {
    private final WeakReference<zzbtb> zzfkj;

    private zzbte(zzbtb zzbtbVar) {
        this.zzfkj = new WeakReference<>(zzbtbVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbtb zzbtbVar = this.zzfkj.get();
        if (zzbtbVar != null) {
            zzbtbVar.zzagj();
        }
    }
}
