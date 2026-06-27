package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* loaded from: classes2.dex */
public final class zzctu implements zzdti<zzctp> {
    private final zzdtu<zzaxb> zzerj;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<PackageInfo> zzfwk;

    public zzctu(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<PackageInfo> zzdtuVar3, zzdtu<zzaxb> zzdtuVar4) {
        this.zzfgh = zzdtuVar;
        this.zzfhr = zzdtuVar2;
        this.zzfwk = zzdtuVar3;
        this.zzerj = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzctp(this.zzfgh.get(), this.zzfhr.get(), this.zzfwk.get(), this.zzerj.get());
    }
}
