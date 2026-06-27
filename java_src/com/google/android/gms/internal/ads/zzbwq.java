package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwq implements com.google.android.gms.ads.internal.overlay.zzo {
    private final zzbsv zzflp;
    private final zzbuv zzflq;

    public zzbwq(zzbsv zzbsvVar, zzbuv zzbuvVar) {
        this.zzflp = zzbsvVar;
        this.zzflq = zzbuvVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
        this.zzflp.zzsz();
        this.zzflq.onHide();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        this.zzflp.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        this.zzflp.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
        this.zzflp.zzta();
        this.zzflq.zzagw();
    }
}
