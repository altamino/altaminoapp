package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzdaa implements zzdti<zzczt> {
    private final zzdtu<zzczu> zzera;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<ScheduledExecutorService> zzfgw;

    private zzdaa(zzdtu<zzbbl> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<zzczu> zzdtuVar3) {
        this.zzfgh = zzdtuVar;
        this.zzfgw = zzdtuVar2;
        this.zzera = zzdtuVar3;
    }

    public static zzdaa zzq(zzdtu<zzbbl> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<zzczu> zzdtuVar3) {
        return new zzdaa(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzczt(this.zzfgh.get(), this.zzfgw.get(), this.zzera.get());
    }
}
