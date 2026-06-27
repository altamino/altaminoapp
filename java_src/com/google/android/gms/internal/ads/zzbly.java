package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbly implements zzdti<zzblx> {
    private final zzdtu<zzcxk> zzfey;

    private zzbly(zzdtu<zzcxk> zzdtuVar) {
        this.zzfey = zzdtuVar;
    }

    public static zzbly zze(zzdtu<zzcxk> zzdtuVar) {
        return new zzbly(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzblx(this.zzfey.get());
    }
}
