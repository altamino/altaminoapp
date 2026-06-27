package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzalc implements zzbbt {
    private final /* synthetic */ zzakw zzdcy;

    zzalc(zzala zzalaVar, zzakw zzakwVar) {
        this.zzdcy = zzakwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbt
    public final void run() {
        zzawz.zzds("Rejecting reference for JS Engine.");
        this.zzdcy.reject();
    }
}
