package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcnv implements zzdti<zzcnl> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzcdn> zzfqk;
    private final zzdtu<zzcdf> zzfzs;

    public zzcnv(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<Executor> zzdtuVar4, zzdtu<zzcdf> zzdtuVar5, zzdtu<zzcdn> zzdtuVar6) {
        this.zzeoj = zzdtuVar;
        this.zzfgp = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzfhi = zzdtuVar4;
        this.zzfzs = zzdtuVar5;
        this.zzfqk = zzdtuVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcnl(this.zzeoj.get(), this.zzfgp.get(), this.zzfhr.get(), this.zzfhi.get(), this.zzfzs.get(), this.zzfqk.get());
    }
}
