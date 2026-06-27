package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcap implements zzdti<zzcan> {
    private final zzdtu<zzayu> zzepv;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Clock> zzfgj;

    public zzcap(zzdtu<zzayu> zzdtuVar, zzdtu<Clock> zzdtuVar2, zzdtu<Executor> zzdtuVar3) {
        this.zzepv = zzdtuVar;
        this.zzfgj = zzdtuVar2;
        this.zzfgh = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcan(this.zzepv.get(), this.zzfgj.get(), this.zzfgh.get());
    }
}
