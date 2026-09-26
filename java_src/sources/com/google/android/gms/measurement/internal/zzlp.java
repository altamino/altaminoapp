package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
final class zzlp implements Runnable {
    private final /* synthetic */ zzlm zza;

    zzlp(zzlm zzlmVar) {
        this.zza = zzlmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza.zzb = null;
        this.zza.zza.zzak();
    }
}
