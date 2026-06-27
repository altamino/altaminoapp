package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzbhd implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzavb zzejs;
    private final /* synthetic */ zzbha zzeju;

    zzbhd(zzbha zzbhaVar, zzavb zzavbVar) {
        this.zzeju = zzbhaVar;
        this.zzejs = zzavbVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzeju.zza(view, this.zzejs, 10);
    }
}
