package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcgl implements zzdti<zzcgb> {
    private final zzdtu<zzclc> zzeog;
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<ScheduledExecutorService> zzfjc;

    public zzcgl(zzdtu<Executor> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzclc> zzdtuVar4, zzdtu<ScheduledExecutorService> zzdtuVar5) {
        this.zzfhi = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfgh = zzdtuVar3;
        this.zzeog = zzdtuVar4;
        this.zzfjc = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcgb(this.zzfhi.get(), this.zzeoj.get(), this.zzfgh.get(), this.zzeog.get(), this.zzfjc.get());
    }
}
