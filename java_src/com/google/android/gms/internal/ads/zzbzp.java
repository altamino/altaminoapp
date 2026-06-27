package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbzp implements zzdti<zzbzl> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzaxb> zzerj;
    private final zzdtu<zzbyx> zzews;
    private final zzdtu<zzbzt> zzeyl;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzbyt> zzfnh;

    private zzbzp(zzdtu<Context> zzdtuVar, zzdtu<zzaxb> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<zzbyx> zzdtuVar4, zzdtu<zzbyt> zzdtuVar5, zzdtu<zzbzt> zzdtuVar6, zzdtu<Executor> zzdtuVar7, zzdtu<Executor> zzdtuVar8) {
        this.zzeoj = zzdtuVar;
        this.zzerj = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzews = zzdtuVar4;
        this.zzfnh = zzdtuVar5;
        this.zzeyl = zzdtuVar6;
        this.zzfhi = zzdtuVar7;
        this.zzfgh = zzdtuVar8;
    }

    public static zzbzp zza(zzdtu<Context> zzdtuVar, zzdtu<zzaxb> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<zzbyx> zzdtuVar4, zzdtu<zzbyt> zzdtuVar5, zzdtu<zzbzt> zzdtuVar6, zzdtu<Executor> zzdtuVar7, zzdtu<Executor> zzdtuVar8) {
        return new zzbzp(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7, zzdtuVar8);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbzl(this.zzeoj.get(), this.zzerj.get(), this.zzfhr.get(), this.zzews.get(), this.zzfnh.get(), this.zzeyl.get(), this.zzfhi.get(), this.zzfgh.get());
    }
}
