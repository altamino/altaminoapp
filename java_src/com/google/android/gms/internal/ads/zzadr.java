package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

@zzard
/* loaded from: classes2.dex */
public final class zzadr extends zzadp {
    private final OnCustomRenderedAdLoadedListener zzcji;

    public zzadr(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcji = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzado
    public final void zza(zzadl zzadlVar) {
        this.zzcji.onCustomRenderedAdLoaded(new zzadk(zzadlVar));
    }
}
