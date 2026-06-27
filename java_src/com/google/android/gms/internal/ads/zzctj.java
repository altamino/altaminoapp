package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzctj implements zzdti<zzcth> {
    private final zzdtu<zzbbl> zzfgh;

    private zzctj(zzdtu<zzbbl> zzdtuVar) {
        this.zzfgh = zzdtuVar;
    }

    public static zzctj zzam(zzdtu<zzbbl> zzdtuVar) {
        return new zzctj(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcth(this.zzfgh.get());
    }
}
