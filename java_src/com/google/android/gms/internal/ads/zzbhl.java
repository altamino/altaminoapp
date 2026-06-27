package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbhl implements Runnable {
    private final /* synthetic */ zzbhk zzekm;

    zzbhl(zzbhk zzbhkVar) {
        this.zzekm = zzbhkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzekm.zzekj.destroy();
    }
}
