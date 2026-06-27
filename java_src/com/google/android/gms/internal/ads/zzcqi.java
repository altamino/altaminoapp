package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcqi implements zzbsr {
    private final /* synthetic */ zzcqf zzgfi;
    private zzbsr zzgfk;

    public zzcqi(zzcqf zzcqfVar, zzbsr zzbsrVar) {
        this.zzgfi = zzcqfVar;
        this.zzgfk = zzbsrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        this.zzgfi.zzalg();
        this.zzgfk.onAdLoaded();
        this.zzgfi.zzalh();
    }
}
