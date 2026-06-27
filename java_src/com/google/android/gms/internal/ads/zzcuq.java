package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcuq implements zzdti<zzcul> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcpf> zzeow;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<String> zzfgq;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<ScheduledExecutorService> zzfjc;

    private zzcuq(zzdtu<zzbbl> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<String> zzdtuVar3, zzdtu<zzcpf> zzdtuVar4, zzdtu<Context> zzdtuVar5, zzdtu<zzcxv> zzdtuVar6) {
        this.zzfgh = zzdtuVar;
        this.zzfjc = zzdtuVar2;
        this.zzfgq = zzdtuVar3;
        this.zzeow = zzdtuVar4;
        this.zzeoj = zzdtuVar5;
        this.zzfhr = zzdtuVar6;
    }

    public static zzcuq zzb(zzdtu<zzbbl> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<String> zzdtuVar3, zzdtu<zzcpf> zzdtuVar4, zzdtu<Context> zzdtuVar5, zzdtu<zzcxv> zzdtuVar6) {
        return new zzcuq(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcul(this.zzfgh.get(), this.zzfjc.get(), this.zzfgq.get(), this.zzeow.get(), this.zzeoj.get(), this.zzfhr.get());
    }
}
