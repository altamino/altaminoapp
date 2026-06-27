package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcfb implements zzbro, zzbsr, zzbtk {
    private final String zzcwz = (String) zzyt.zzpe().zzd(zzacu.zzcmy);
    private final zzdae zzffb;
    private final zzcfi zzfuo;

    public zzcfb(zzcfi zzcfiVar, zzdae zzdaeVar) {
        this.zzfuo = zzcfiVar;
        this.zzffb = zzdaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        zzm(this.zzfuo.zzqy());
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(int i) {
        zzm(this.zzfuo.zzqy());
    }

    private final void zzm(Map<String, String> map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.zzcwz).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String string = builderBuildUpon.build().toString();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcmx)).booleanValue()) {
            this.zzffb.zzed(string);
        }
        zzawz.zzds(string);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) {
        this.zzfuo.zzi(zzarxVar.zzdot);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(zzcxu zzcxuVar) {
        this.zzfuo.zzb(zzcxuVar);
    }
}
