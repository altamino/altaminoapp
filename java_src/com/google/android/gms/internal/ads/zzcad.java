package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcad implements zzdti<zzcac> {
    private final zzdtu<zzbyx> zzews;
    private final zzdtu<zzbyt> zzfnh;

    public zzcad(zzdtu<zzbyt> zzdtuVar, zzdtu<zzbyx> zzdtuVar2) {
        this.zzfnh = zzdtuVar;
        this.zzews = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcac(this.zzfnh.get(), this.zzews.get());
    }
}
