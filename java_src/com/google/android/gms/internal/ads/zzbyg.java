package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbyg implements zzdti<zzbzb> {
    private final zzbyc zzfnl;
    private final zzdtu<zzbxx> zzfnm;

    public zzbyg(zzbyc zzbycVar, zzdtu<zzbxx> zzdtuVar) {
        this.zzfnl = zzbycVar;
        this.zzfnm = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbzb) zzdto.zza(this.zzfnm.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
