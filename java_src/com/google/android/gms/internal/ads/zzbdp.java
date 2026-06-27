package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.view.Surface;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzbdp implements zzhh {
    private WeakReference<zzhh> zzefl;
    private final /* synthetic */ zzbdk zzefm;

    private zzbdp(zzbdk zzbdkVar) {
        this.zzefm = zzbdkVar;
        this.zzefl = new WeakReference<>(null);
    }

    public final void zza(zzhh zzhhVar) {
        this.zzefl = new WeakReference<>(zzhhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzb(int i, long j) {
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zzb(i, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(int i, int i2, float f) {
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zza(i, i2, f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zza(Surface surface) {
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zza(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(zzgv zzgvVar) {
        this.zzefm.zzm("DecoderInitializationError", zzgvVar.getMessage());
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zzb(zzgvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(MediaCodec.CryptoException cryptoException) {
        this.zzefm.zzm("CryptoError", cryptoException.getMessage());
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zzb(cryptoException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zza(String str, long j, long j2) {
        zzhh zzhhVar = this.zzefl.get();
        if (zzhhVar != null) {
            zzhhVar.zza(str, j, j2);
        }
    }
}
