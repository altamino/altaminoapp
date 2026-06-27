package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbme implements zzbrl, zzbrw, zzbsr, zzxr {
    private final zzcxu zzffa;
    private final zzdae zzffb;
    private final zzcxm zzffc;
    private boolean zzffd;
    private boolean zzffe;

    public zzbme(zzcxu zzcxuVar, zzcxm zzcxmVar, zzdae zzdaeVar) {
        this.zzffa = zzcxuVar;
        this.zzffc = zzcxmVar;
        this.zzffb = zzdaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzffd) {
            ArrayList arrayList = new ArrayList(this.zzffc.zzdff);
            arrayList.addAll(this.zzffc.zzgka);
            this.zzffb.zza(this.zzffa, this.zzffc, true, (List<String>) arrayList);
        } else {
            this.zzffb.zza(this.zzffa, this.zzffc, this.zzffc.zzgkc);
            this.zzffb.zza(this.zzffa, this.zzffc, this.zzffc.zzgka);
        }
        this.zzffd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final void onAdClicked() {
        zzdae zzdaeVar = this.zzffb;
        zzcxu zzcxuVar = this.zzffa;
        zzcxm zzcxmVar = this.zzffc;
        zzdaeVar.zza(zzcxuVar, zzcxmVar, zzcxmVar.zzdfe);
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final synchronized void onAdImpression() {
        if (!this.zzffe) {
            this.zzffb.zza(this.zzffa, this.zzffc, this.zzffc.zzdff);
            this.zzffe = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void zzb(zzasr zzasrVar, String str, String str2) {
        zzdae zzdaeVar = this.zzffb;
        zzcxu zzcxuVar = this.zzffa;
        zzcxm zzcxmVar = this.zzffc;
        zzdaeVar.zza(zzcxuVar, zzcxmVar, zzcxmVar.zzdnz, zzasrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoStarted() {
        zzdae zzdaeVar = this.zzffb;
        zzcxu zzcxuVar = this.zzffa;
        zzcxm zzcxmVar = this.zzffc;
        zzdaeVar.zza(zzcxuVar, zzcxmVar, zzcxmVar.zzdny);
    }

    @Override // com.google.android.gms.internal.ads.zzbrl
    public final void onRewardedVideoCompleted() {
        zzdae zzdaeVar = this.zzffb;
        zzcxu zzcxuVar = this.zzffa;
        zzcxm zzcxmVar = this.zzffc;
        zzdaeVar.zza(zzcxuVar, zzcxmVar, zzcxmVar.zzgkb);
    }
}
