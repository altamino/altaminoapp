package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbvi implements zzdti<zzbvh> {
    private final zzdtu<zzdae> zzerp;
    private final zzdtu<zzcxm> zzffg;

    private zzbvi(zzdtu<zzcxm> zzdtuVar, zzdtu<zzdae> zzdtuVar2) {
        this.zzffg = zzdtuVar;
        this.zzerp = zzdtuVar2;
    }

    public static zzbvi zzh(zzdtu<zzcxm> zzdtuVar, zzdtu<zzdae> zzdtuVar2) {
        return new zzbvi(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbvh(this.zzffg.get(), this.zzerp.get());
    }
}
