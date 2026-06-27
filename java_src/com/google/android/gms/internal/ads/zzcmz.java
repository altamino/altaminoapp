package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcmz<AdT> implements zzdti<zzcmx<AdT>> {
    private final zzdtu<zzdae> zzerp;
    private final zzdtu<zzbpe<AdT>> zzfgg;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<ScheduledExecutorService> zzfgw;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzbrm> zzgah;
    private final zzdtu<zzcmu> zzgbp;

    private zzcmz(zzdtu<zzczt> zzdtuVar, zzdtu<zzcmu> zzdtuVar2, zzdtu<zzbrm> zzdtuVar3, zzdtu<zzdae> zzdtuVar4, zzdtu<zzbpe<AdT>> zzdtuVar5, zzdtu<Executor> zzdtuVar6, zzdtu<ScheduledExecutorService> zzdtuVar7) {
        this.zzfhv = zzdtuVar;
        this.zzgbp = zzdtuVar2;
        this.zzgah = zzdtuVar3;
        this.zzerp = zzdtuVar4;
        this.zzfgg = zzdtuVar5;
        this.zzfgh = zzdtuVar6;
        this.zzfgw = zzdtuVar7;
    }

    public static <AdT> zzcmz<AdT> zza(zzdtu<zzczt> zzdtuVar, zzdtu<zzcmu> zzdtuVar2, zzdtu<zzbrm> zzdtuVar3, zzdtu<zzdae> zzdtuVar4, zzdtu<zzbpe<AdT>> zzdtuVar5, zzdtu<Executor> zzdtuVar6, zzdtu<ScheduledExecutorService> zzdtuVar7) {
        return new zzcmz<>(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5, zzdtuVar6, zzdtuVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcmx(this.zzfhv.get(), this.zzgbp.get(), this.zzgah.get(), this.zzerp.get(), this.zzfgg.get(), this.zzfgh.get(), this.zzfgw.get());
    }
}
