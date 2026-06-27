package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzbdm implements zzgq {
    private WeakReference<zzgq> zzefl;
    private final /* synthetic */ zzbdk zzefm;

    private zzbdm(zzbdk zzbdkVar) {
        this.zzefm = zzbdkVar;
        this.zzefl = new WeakReference<>(null);
    }

    public final void zza(zzgq zzgqVar) {
        this.zzefl = new WeakReference<>(zzgqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zza(zzhu zzhuVar) {
        this.zzefm.zzm("AudioTrackInitializationError", zzhuVar.getMessage());
        zzgq zzgqVar = this.zzefl.get();
        if (zzgqVar != null) {
            zzgqVar.zza(zzhuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final void zza(zzhv zzhvVar) {
        this.zzefm.zzm("AudioTrackWriteError", zzhvVar.getMessage());
        zzgq zzgqVar = this.zzefl.get();
        if (zzgqVar != null) {
            zzgqVar.zza(zzhvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(zzgv zzgvVar) {
        this.zzefm.zzm("DecoderInitializationError", zzgvVar.getMessage());
        zzgq zzgqVar = this.zzefl.get();
        if (zzgqVar != null) {
            zzgqVar.zzb(zzgvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzb(MediaCodec.CryptoException cryptoException) {
        this.zzefm.zzm("CryptoError", cryptoException.getMessage());
        zzgq zzgqVar = this.zzefl.get();
        if (zzgqVar != null) {
            zzgqVar.zzb(cryptoException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zza(String str, long j, long j2) {
        zzgq zzgqVar = this.zzefl.get();
        if (zzgqVar != null) {
            zzgqVar.zza(str, j, j2);
        }
    }
}
