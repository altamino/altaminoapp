package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
final class zzccq implements com.google.android.gms.ads.internal.overlay.zzo, com.google.android.gms.ads.internal.overlay.zzu, zzagv, zzagx, zzxr {
    private zzxr zzcgi;
    private zzagv zzczo;
    private zzagx zzczp;
    private com.google.android.gms.ads.internal.overlay.zzo zzdkm;
    private com.google.android.gms.ads.internal.overlay.zzu zzdkq;

    private zzccq() {
    }

    @Override // com.google.android.gms.internal.ads.zzxr
    public final synchronized void onAdClicked() {
        if (this.zzcgi != null) {
            this.zzcgi.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzsz() {
        if (this.zzdkm != null) {
            this.zzdkm.zzsz();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onPause() {
        if (this.zzdkm != null) {
            this.zzdkm.onPause();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onResume() {
        if (this.zzdkm != null) {
            this.zzdkm.onResume();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzta() {
        if (this.zzdkm != null) {
            this.zzdkm.zzta();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzu
    public final synchronized void zztq() {
        if (this.zzdkq != null) {
            this.zzdkq.zztq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagv
    public final synchronized void zza(String str, Bundle bundle) {
        if (this.zzczo != null) {
            this.zzczo.zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagx
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzczp != null) {
            this.zzczp.onAppEvent(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zza(zzxr zzxrVar, zzagv zzagvVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar, zzagx zzagxVar, com.google.android.gms.ads.internal.overlay.zzu zzuVar) {
        this.zzcgi = zzxrVar;
        this.zzczo = zzagvVar;
        this.zzdkm = zzoVar;
        this.zzczp = zzagxVar;
        this.zzdkq = zzuVar;
    }

    /* synthetic */ zzccq(zzccm zzccmVar) {
        this();
    }
}
