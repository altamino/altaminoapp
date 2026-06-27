package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzctb implements zzdti<zzcsz> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzcxv> zzfhr;

    private zzctb(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcxv> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzfhr = zzdtuVar2;
    }

    public static zzctb zzan(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcxv> zzdtuVar2) {
        return new zzctb(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcsz(this.zzfgh.get(), this.zzfhr.get());
    }
}
