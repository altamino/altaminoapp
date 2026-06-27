package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzckz implements zzdti<zzckv> {
    private final zzdtu<zzboc> zzezx;
    private final zzdtu<zzckb> zzfab;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<zzbrm> zzgah;

    public zzckz(zzdtu<zzboc> zzdtuVar, zzdtu<zzckb> zzdtuVar2, zzdtu<zzbrm> zzdtuVar3, zzdtu<ScheduledExecutorService> zzdtuVar4, zzdtu<zzbbl> zzdtuVar5) {
        this.zzezx = zzdtuVar;
        this.zzfab = zzdtuVar2;
        this.zzgah = zzdtuVar3;
        this.zzfjc = zzdtuVar4;
        this.zzfgh = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzckv(this.zzezx.get(), this.zzfab.get(), this.zzgah.get(), this.zzfjc.get(), this.zzfgh.get());
    }
}
