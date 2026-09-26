package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes11.dex */
final class zzlq implements Runnable {
    private final /* synthetic */ zzlm zza;

    zzlq(zzlm zzlmVar) {
        this.zza = zzlmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkp.zza(this.zza.zza, new ComponentName(this.zza.zza.zza(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
