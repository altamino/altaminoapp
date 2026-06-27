package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbhe implements com.google.android.gms.ads.internal.overlay.zzo {
    private com.google.android.gms.ads.internal.overlay.zzo zzdkm;
    private zzbgz zzejv;

    public zzbhe(zzbgz zzbgzVar, com.google.android.gms.ads.internal.overlay.zzo zzoVar) {
        this.zzejv = zzbgzVar;
        this.zzdkm = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
        this.zzdkm.zzta();
        this.zzejv.zztl();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
        this.zzdkm.zzsz();
        this.zzejv.zzaab();
    }
}
