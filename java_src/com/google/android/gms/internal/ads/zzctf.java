package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzctf implements zzdti<zzctd> {
    private final zzdtu<zzbbl> zzfgh;

    private zzctf(zzdtu<zzbbl> zzdtuVar) {
        this.zzfgh = zzdtuVar;
    }

    public static zzctf zzal(zzdtu<zzbbl> zzdtuVar) {
        return new zzctf(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzctd(this.zzfgh.get());
    }
}
