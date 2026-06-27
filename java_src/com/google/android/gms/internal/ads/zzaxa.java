package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;

@zzard
/* loaded from: classes2.dex */
public final class zzaxa extends zzdbh {
    public zzaxa(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdMobHandler.handleMessage");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    protected final void zzb(Message message) {
        try {
            super.zzb(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzk.zzlg();
            zzaxi.zza(com.google.android.gms.ads.internal.zzk.zzlk().getApplicationContext(), th);
            throw th;
        }
    }
}
