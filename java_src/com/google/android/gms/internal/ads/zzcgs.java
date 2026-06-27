package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcgs implements zzdti<zzcgn> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzbbl> zzfvw;
    private final zzdtu<zzchv> zzfvx;
    private final zzdtu<zzcig> zzfvy;

    private zzcgs(zzdtu<zzbbl> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzchv> zzdtuVar3, zzdtu<zzcig> zzdtuVar4) {
        this.zzfvw = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzfvx = zzdtuVar3;
        this.zzfvy = zzdtuVar4;
    }

    public static zzcgs zzc(zzdtu<zzbbl> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzchv> zzdtuVar3, zzdtu<zzcig> zzdtuVar4) {
        return new zzcgs(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcgn(this.zzfvw.get(), this.zzfgh.get(), this.zzfvx.get(), zzdth.zzap(this.zzfvy));
    }
}
