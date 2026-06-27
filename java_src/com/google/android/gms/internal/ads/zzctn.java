package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzctn implements zzdti<zzctl> {
    private final zzdtu<zzcxk> zzfey;
    private final zzdtu<zzbbl> zzfgh;

    private zzctn(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcxk> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzfey = zzdtuVar2;
    }

    public static zzctn zzao(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcxk> zzdtuVar2) {
        return new zzctn(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzctl(this.zzfgh.get(), this.zzfey.get());
    }
}
