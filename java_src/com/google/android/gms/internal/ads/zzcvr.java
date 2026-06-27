package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcvr implements zzdti<zzcvo> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<zzawi> zzgit;

    public zzcvr(zzdtu<zzawi> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<ScheduledExecutorService> zzdtuVar3, zzdtu<Executor> zzdtuVar4) {
        this.zzgit = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfjc = zzdtuVar3;
        this.zzfgh = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcvo(this.zzgit.get(), this.zzeoj.get(), this.zzfjc.get(), this.zzfgh.get());
    }
}
