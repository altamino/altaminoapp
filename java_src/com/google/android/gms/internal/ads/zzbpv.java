package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzbpv implements com.google.android.gms.ads.internal.overlay.zzo {
    private final zzbse zzfjg;
    private AtomicBoolean zzfjh = new AtomicBoolean(false);

    public zzbpv(zzbse zzbseVar) {
        this.zzfjg = zzbseVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
        this.zzfjh.set(true);
        this.zzfjg.onAdClosed();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
        this.zzfjg.onAdOpened();
    }

    public final boolean isClosed() {
        return this.zzfjh.get();
    }
}
