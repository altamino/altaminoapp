package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcov<AdT> implements zzdti<zzcor<AdT>> {
    private final zzdtu<zzbbl> zzfhi;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzado> zzgcu;
    private final zzdtu<zzcou<AdT>> zzgda;

    public zzcov(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzado> zzdtuVar3, zzdtu<zzcou<AdT>> zzdtuVar4) {
        this.zzfhv = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzgcu = zzdtuVar3;
        this.zzgda = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcor(this.zzfhv.get(), this.zzfhi.get(), this.zzgcu.get(), this.zzgda.get());
    }
}
