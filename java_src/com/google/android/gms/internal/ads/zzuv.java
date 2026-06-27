package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzuv implements Runnable {
    private final /* synthetic */ View zzbvl;
    private final /* synthetic */ zzuu zzbvm;

    zzuv(zzuu zzuuVar, View view) {
        this.zzbvm = zzuuVar;
        this.zzbvl = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbvm.zzi(this.zzbvl);
    }
}
