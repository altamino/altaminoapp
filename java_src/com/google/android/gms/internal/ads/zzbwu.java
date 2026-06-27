package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwu implements zzdti<zzbbh<zzbvx>> {
    private final zzdtu<zzbbh<zzcxu>> zzfff;
    private final zzdtu<zzcmx<zzbvx>> zzfgg;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzblq> zzfhw;

    public zzbwu(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbh<zzcxu>> zzdtuVar2, zzdtu<zzblq> zzdtuVar3, zzdtu<zzcmx<zzbvx>> zzdtuVar4) {
        this.zzfhv = zzdtuVar;
        this.zzfff = zzdtuVar2;
        this.zzfhw = zzdtuVar3;
        this.zzfgg = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbbh) zzdto.zza(zzbqq.zza(this.zzfhv.get(), this.zzfff.get(), this.zzfhw.get(), this.zzfgg.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
