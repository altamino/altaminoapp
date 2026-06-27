package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzbpq implements zzdti<zzbpk> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<zzbbh<zzbph>> zzfjd;

    public zzbpq(zzdtu<Executor> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<zzbbh<zzbph>> zzdtuVar3) {
        this.zzfgh = zzdtuVar;
        this.zzfjc = zzdtuVar2;
        this.zzfjd = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbpk(this.zzfgh.get(), this.zzfjc.get(), this.zzfjd.get());
    }
}
