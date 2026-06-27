package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbyf implements zzdti<zzbyx> {
    private final zzdtu<zzbyy> zzewr;
    private final zzbyc zzfnl;

    public zzbyf(zzbyc zzbycVar, zzdtu<zzbyy> zzdtuVar) {
        this.zzfnl = zzbycVar;
        this.zzewr = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbyx) zzdto.zza(this.zzewr.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
