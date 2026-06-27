package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbmf implements zzdti<zzbme> {
    private final zzdtu<zzdae> zzerp;
    private final zzdtu<zzcxu> zzfff;
    private final zzdtu<zzcxm> zzffg;

    private zzbmf(zzdtu<zzcxu> zzdtuVar, zzdtu<zzcxm> zzdtuVar2, zzdtu<zzdae> zzdtuVar3) {
        this.zzfff = zzdtuVar;
        this.zzffg = zzdtuVar2;
        this.zzerp = zzdtuVar3;
    }

    public static zzbmf zza(zzdtu<zzcxu> zzdtuVar, zzdtu<zzcxm> zzdtuVar2, zzdtu<zzdae> zzdtuVar3) {
        return new zzbmf(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbme(this.zzfff.get(), this.zzffg.get(), this.zzerp.get());
    }
}
