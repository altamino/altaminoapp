package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbos implements zzdti<zzbol> {
    private final zzdtu<zzbry> zzexa;
    private final zzdtu<zzbso> zzexw;
    private final zzdtu<Runnable> zzfbt;
    private final zzdtu<zzcxu> zzfff;
    private final zzdtu<zzaga> zzfgm;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxm> zzfhj;
    private final zzdtu<String> zzfhk;

    public zzbos(zzdtu<zzaga> zzdtuVar, zzdtu<Runnable> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzcxu> zzdtuVar4, zzdtu<zzcxm> zzdtuVar5, zzdtu<zzbry> zzdtuVar6, zzdtu<zzbso> zzdtuVar7, zzdtu<String> zzdtuVar8) {
        this.zzfgm = zzdtuVar;
        this.zzfbt = zzdtuVar2;
        this.zzfhi = zzdtuVar3;
        this.zzfff = zzdtuVar4;
        this.zzfhj = zzdtuVar5;
        this.zzexa = zzdtuVar6;
        this.zzexw = zzdtuVar7;
        this.zzfhk = zzdtuVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzbol zzbolVar = new zzbol(this.zzfgm.get(), this.zzfbt.get(), this.zzfhi.get());
        zzbql.zza(zzbolVar, this.zzfff.get());
        zzbql.zza(zzbolVar, this.zzfhj.get());
        zzbql.zza(zzbolVar, this.zzexa.get());
        zzbql.zza(zzbolVar, this.zzexw.get());
        zzbql.zza(zzbolVar, this.zzfhk.get());
        return zzbolVar;
    }
}
