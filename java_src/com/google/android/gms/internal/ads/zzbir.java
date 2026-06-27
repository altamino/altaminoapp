package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzbir implements View.OnAttachStateChangeListener {
    private final /* synthetic */ zzavb zzejs;
    private final /* synthetic */ zzbio zzemm;

    zzbir(zzbio zzbioVar, zzavb zzavbVar) {
        this.zzemm = zzbioVar;
        this.zzejs = zzavbVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzemm.zza(view, this.zzejs, 10);
    }
}
