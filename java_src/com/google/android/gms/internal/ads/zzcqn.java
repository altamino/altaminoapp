package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcqn implements zzbsr {
    private zzbsr zzgfk;
    private final /* synthetic */ zzcqj zzgfo;

    public zzcqn(zzcqj zzcqjVar, zzbsr zzbsrVar) {
        this.zzgfo = zzcqjVar;
        this.zzgfk = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        this.zzgfo.zzalg();
        this.zzgfk.onAdLoaded();
        this.zzgfo.zzalh();
    }
}
