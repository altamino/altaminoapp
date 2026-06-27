package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdag implements zzdti<zzdae> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbah> zzerm;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<String> zzggq;
    private final zzdtu<String> zzggr;
    private final zzdtu<zzcmu> zzgnt;

    private zzdag(zzdtu<Executor> zzdtuVar, zzdtu<zzbah> zzdtuVar2, zzdtu<zzcmu> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<String> zzdtuVar5, zzdtu<String> zzdtuVar6, zzdtu<Context> zzdtuVar7, zzdtu<Clock> zzdtuVar8) {
        this.zzfgh = zzdtuVar;
        this.zzerm = zzdtuVar2;
        this.zzgnt = zzdtuVar3;
        this.zzfgp = zzdtuVar4;
        this.zzggq = zzdtuVar5;
        this.zzggr = zzdtuVar6;
        this.zzeoj = zzdtuVar7;
        this.zzfgj = zzdtuVar8;
    }

    public static zzdag zzc(zzdtu<Executor> zzdtuVar, zzdtu<zzbah> zzdtuVar2, zzdtu<zzcmu> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<String> zzdtuVar5, zzdtu<String> zzdtuVar6, zzdtu<Context> zzdtuVar7, zzdtu<Clock> zzdtuVar8) {
        return new zzdag(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzdae(this.zzfgh.get(), this.zzerm.get(), this.zzgnt.get(), this.zzfgp.get(), this.zzggq.get(), this.zzggr.get(), this.zzeoj.get(), this.zzfgj.get());
    }
}
