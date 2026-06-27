package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcki implements zzdti<zzckb> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzcdn> zzfqk;
    private final zzdtu<zzboc> zzfzs;
    private final zzdtu<zzbam<zzcxm, zzayb>> zzfzt;

    public zzcki(zzdtu<zzboc> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzcdn> zzdtuVar4, zzdtu<zzcxv> zzdtuVar5, zzdtu<zzbam<zzcxm, zzayb>> zzdtuVar6) {
        this.zzfzs = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfhi = zzdtuVar3;
        this.zzfqk = zzdtuVar4;
        this.zzfhr = zzdtuVar5;
        this.zzfzt = zzdtuVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzckb(this.zzfzs.get(), this.zzeoj.get(), this.zzfhi.get(), this.zzfqk.get(), this.zzfhr.get(), this.zzfzt.get());
    }
}
