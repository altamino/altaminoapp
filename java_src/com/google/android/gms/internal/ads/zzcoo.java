package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzcoo implements com.google.android.gms.ads.internal.zzf {
    private final zzbvd zzfha;
    private final zzbrt zzfmr;
    private final zzbri zzfms;
    private final zzbmn zzfmt;
    private final zzbva zzfmv;
    private AtomicBoolean zzgcs = new AtomicBoolean(false);

    zzcoo(zzbri zzbriVar, zzbrt zzbrtVar, zzbvd zzbvdVar, zzbva zzbvaVar, zzbmn zzbmnVar) {
        this.zzfms = zzbriVar;
        this.zzfmr = zzbrtVar;
        this.zzfha = zzbvdVar;
        this.zzfmv = zzbvaVar;
        this.zzfmt = zzbmnVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zzg(View view) {
        if (this.zzgcs.compareAndSet(false, true)) {
            this.zzfmt.onAdImpression();
            this.zzfmv.zzq(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzky() {
        if (this.zzgcs.get()) {
            this.zzfms.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final void zzkz() {
        if (this.zzgcs.get()) {
            this.zzfmr.onAdImpression();
            this.zzfha.zzagx();
        }
    }
}
