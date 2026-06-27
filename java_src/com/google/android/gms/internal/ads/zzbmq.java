package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbmq implements zzdti<zzbmn> {
    private final zzdtu<zzaly> zzfgf;
    private final zzdtu<zzbml> zzfgg;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbmg> zzfgi;
    private final zzdtu<Clock> zzfgj;

    private zzbmq(zzdtu<zzaly> zzdtuVar, zzdtu<zzbml> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzbmg> zzdtuVar4, zzdtu<Clock> zzdtuVar5) {
        this.zzfgf = zzdtuVar;
        this.zzfgg = zzdtuVar2;
        this.zzfgh = zzdtuVar3;
        this.zzfgi = zzdtuVar4;
        this.zzfgj = zzdtuVar5;
    }

    public static zzbmq zza(zzdtu<zzaly> zzdtuVar, zzdtu<zzbml> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzbmg> zzdtuVar4, zzdtu<Clock> zzdtuVar5) {
        return new zzbmq(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbmn(this.zzfgf.get(), this.zzfgg.get(), this.zzfgh.get(), this.zzfgi.get(), this.zzfgj.get());
    }
}
