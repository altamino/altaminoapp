package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzbov implements zzbsr, zzue {
    private final zzcxm zzffc;
    private final zzbrt zzfij;
    private final AtomicBoolean zzfik = new AtomicBoolean();

    public zzbov(zzcxm zzcxmVar, zzbrt zzbrtVar) {
        this.zzffc = zzcxmVar;
        this.zzfij = zzbrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final synchronized void onAdLoaded() {
        if (this.zzffc.zzgjz != 1) {
            zzafw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zza(zzud zzudVar) {
        if (this.zzffc.zzgjz == 1 && zzudVar.zzbtk) {
            zzafw();
        }
    }

    private final void zzafw() {
        if (this.zzfik.compareAndSet(false, true)) {
            this.zzfij.onAdImpression();
        }
    }
}
