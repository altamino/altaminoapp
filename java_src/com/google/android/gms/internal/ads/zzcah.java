package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcah implements zzdti<zzbzb> {
    private final zzdtu<zzcae> zzeze;
    private final zzcag zzfqr;

    public zzcah(zzcag zzcagVar, zzdtu<zzcae> zzdtuVar) {
        this.zzfqr = zzcagVar;
        this.zzeze = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbzb) zzdto.zza(this.zzeze.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
