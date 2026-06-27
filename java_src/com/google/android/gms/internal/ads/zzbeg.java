package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes2.dex */
final class zzbeg implements zzgq {
    private final /* synthetic */ zzbdq zzegb;

    zzbeg(zzbdq zzbdqVar) {
        this.zzegb = zzbdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zza(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zza(zzhu zzhuVar) {
        this.zzegb.zzn("AudioTrackInitializationError", zzhuVar.getMessage());
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zza(zzhv zzhvVar) {
        this.zzegb.zzn("AudioTrackWriteError", zzhvVar.getMessage());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(zzgv zzgvVar) {
        this.zzegb.zzn("DecoderInitializationError", zzgvVar.getMessage());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(MediaCodec.CryptoException cryptoException) {
        this.zzegb.zzn("CryptoError", cryptoException.getMessage());
    }
}
