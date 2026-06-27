package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcuy implements zzdti<zzcuw> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzbbl> zzfgh;

    private zzcuy(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzbai> zzdtuVar3) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfej = zzdtuVar3;
    }

    public static zzcuy zzp(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzbai> zzdtuVar3) {
        return new zzcuy(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcuw(this.zzfgh.get(), this.zzeoj.get(), this.zzfej.get());
    }
}
