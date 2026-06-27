package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcdo implements com.google.android.gms.ads.internal.zzj {
    private final /* synthetic */ zzcdn zzfth;

    zzcdo(zzcdn zzcdnVar) {
        this.zzfth = zzcdnVar;
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final void zzlc() {
        this.zzfth.zzftg.onPause();
    }

    @Override // com.google.android.gms.ads.internal.zzj
    public final void zzld() {
        this.zzfth.zzftg.onResume();
    }
}
