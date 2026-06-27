package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzchp implements zzdti<zzchl> {
    private final zzdtu<zzcji> zzeqw;
    private final zzdtu<zzbtg> zzerw;
    private final zzdtu<zzcgn> zzerz;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<ScheduledExecutorService> zzfjc;

    private zzchp(zzdtu<zzbtg> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<zzcgn> zzdtuVar3, zzdtu<zzbbl> zzdtuVar4, zzdtu<ScheduledExecutorService> zzdtuVar5, zzdtu<zzcji> zzdtuVar6) {
        this.zzerw = zzdtuVar;
        this.zzfhr = zzdtuVar2;
        this.zzerz = zzdtuVar3;
        this.zzfgh = zzdtuVar4;
        this.zzfjc = zzdtuVar5;
        this.zzeqw = zzdtuVar6;
    }

    public static zzchp zza(zzdtu<zzbtg> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<zzcgn> zzdtuVar3, zzdtu<zzbbl> zzdtuVar4, zzdtu<ScheduledExecutorService> zzdtuVar5, zzdtu<zzcji> zzdtuVar6) {
        return new zzchp(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzchl(this.zzerw.get(), this.zzfhr.get(), this.zzerz.get(), this.zzfgh.get(), this.zzfjc.get(), this.zzeqw.get());
    }
}
