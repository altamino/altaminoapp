package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzbhc implements Runnable {
    private final /* synthetic */ View val$view;
    private final /* synthetic */ zzavb zzejs;
    private final /* synthetic */ int zzejt;
    private final /* synthetic */ zzbha zzeju;

    zzbhc(zzbha zzbhaVar, View view, zzavb zzavbVar, int i) {
        this.zzeju = zzbhaVar;
        this.val$view = view;
        this.zzejs = zzavbVar;
        this.zzejt = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeju.zza(this.val$view, this.zzejs, this.zzejt - 1);
    }
}
