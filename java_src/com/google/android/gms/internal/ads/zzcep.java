package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzwl;

/* loaded from: classes2.dex */
public final class zzcep implements zzbro, zzbrw, zzbsr, zzbtk, zzxr {
    private final zzwj zzftz;
    private boolean zzfua = false;
    private boolean zzfub = false;

    public zzcep(zzwj zzwjVar) {
        this.zzftz = zzwjVar;
        zzwjVar.zza(zzwl.zza.zzb.AD_REQUEST);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(zzarx zzarxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(final zzcxu zzcxuVar) {
        this.zzftz.zza(new zzwk(zzcxuVar) { // from class: com.google.android.gms.internal.ads.zzceq
            private final zzcxu zzfkl;

            {
                this.zzfkl = zzcxuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzwk
            public final void zza(zzxn zzxnVar) {
                zzcxu zzcxuVar2 = this.zzfkl;
                zzxnVar.zzcfl.zzceh.zzcep = zzcxuVar2.zzgky.zzgku.zzcep;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        this.zzftz.zza(zzwl.zza.zzb.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(int i) {
        switch (i) {
            case 1:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_INVALID_REQUEST);
                break;
            case 2:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_NETWORK_ERROR);
                break;
            case 3:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_NO_FILL);
                break;
            case 4:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_TIMEOUT);
                break;
            case 5:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_CANCELLED);
                break;
            case 6:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_NO_ERROR);
                break;
            case 7:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD_NOT_FOUND);
                break;
            default:
                this.zzftz.zza(zzwl.zza.zzb.AD_FAILED_TO_LOAD);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final synchronized void onAdImpression() {
        this.zzftz.zza(zzwl.zza.zzb.AD_IMPRESSION);
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final synchronized void onAdClicked() {
        if (!this.zzfub) {
            this.zzftz.zza(zzwl.zza.zzb.AD_FIRST_CLICK);
            this.zzfub = true;
        } else {
            this.zzftz.zza(zzwl.zza.zzb.AD_SUBSEQUENT_CLICK);
        }
    }
}
