package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzccs implements com.google.android.gms.ads.internal.overlay.zzu {
    private final zzbse zzfss;

    private zzccs(zzbse zzbseVar) {
        this.zzfss = zzbseVar;
    }

    static com.google.android.gms.ads.internal.overlay.zzu zza(zzbse zzbseVar) {
        return new zzccs(zzbseVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzu
    public final void zztq() {
        this.zzfss.onAdLeftApplication();
    }
}
