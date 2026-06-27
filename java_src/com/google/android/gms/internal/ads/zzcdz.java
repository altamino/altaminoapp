package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcdz implements zzaqc {
    private final /* synthetic */ zzcdp zzftm;

    zzcdz(zzcdp zzcdpVar) {
        this.zzftm = zzcdpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final void zzc(int i, int i2, int i3, int i4) {
        this.zzftm.zzfjg.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final void zztc() {
        this.zzftm.zzfjg.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzaqc
    public final void zztd() {
        this.zzftm.zzftk.zzafq();
    }
}
