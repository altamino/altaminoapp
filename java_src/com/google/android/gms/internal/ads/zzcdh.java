package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcdh implements zzdti<zzcjv<zzcdb>> {
    private final zzdtu<zzcoe<zzcdb, zzams, zzclb>> zzfgg;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzcoe<zzcdb, zzams, zzcla>> zzftd;

    public zzcdh(zzdtu<zzcoe<zzcdb, zzams, zzclb>> zzdtuVar, zzdtu<zzcoe<zzcdb, zzams, zzcla>> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3) {
        this.zzfgg = zzdtuVar;
        this.zzftd = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzcoe<zzcdb, zzams, zzclb> zzcoeVar;
        zzdtu<zzcoe<zzcdb, zzams, zzclb>> zzdtuVar = this.zzfgg;
        zzdtu<zzcoe<zzcdb, zzams, zzcla>> zzdtuVar2 = this.zzftd;
        if (this.zzfhr.get().zzglj.contains("new_rewarded")) {
            zzcoeVar = zzdtuVar2.get();
        } else {
            zzcoeVar = zzdtuVar.get();
        }
        return (zzcjv) zzdto.zza(zzcoeVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
