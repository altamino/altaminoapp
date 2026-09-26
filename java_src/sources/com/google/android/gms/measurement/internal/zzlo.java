package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes11.dex */
final class zzlo implements Runnable {
    private final /* synthetic */ ComponentName zza;
    private final /* synthetic */ zzlm zzb;

    zzlo(zzlm zzlmVar, ComponentName componentName) {
        this.zzb = zzlmVar;
        this.zza = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkp.zza(this.zzb.zza, this.zza);
    }
}
