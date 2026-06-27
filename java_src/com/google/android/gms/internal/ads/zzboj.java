package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzboj implements zzdti<zzcjv<zzbnf>> {
    private final zzdtu<zzbbl> zzfhi;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzckm> zzfhz;
    private final zzdtu<zzcoc> zzfia;

    public zzboj(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzckm> zzdtuVar3, zzdtu<zzcoc> zzdtuVar4) {
        this.zzfhv = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfhz = zzdtuVar3;
        this.zzfia = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcjv) zzdto.zza(new zzcoe(this.zzfhv.get(), this.zzfhi.get(), this.zzfia.get(), this.zzfhz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
