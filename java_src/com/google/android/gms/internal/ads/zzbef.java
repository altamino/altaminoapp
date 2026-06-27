package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.view.Surface;

/* loaded from: classes2.dex */
final class zzbef implements zzhh {
    private final /* synthetic */ zzbdq zzegb;

    zzbef(zzbdq zzbdqVar) {
        this.zzegb = zzbdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zza(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzb(int i, long j) {
        StringBuilder sb = new StringBuilder(64);
        sb.append("Dropped frames. Count: ");
        sb.append(i);
        sb.append(" Elapsed: ");
        sb.append(j);
        zzbad.zzdp(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(int i, int i2, float f) {
        this.zzegb.zzebc = i;
        this.zzegb.zzebd = i2;
        this.zzegb.zzaft = f;
        zzbdq zzbdqVar = this.zzegb;
        zzbdqVar.zzb(zzbdqVar.zzebc, this.zzegb.zzebd, this.zzegb.zzaft);
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
