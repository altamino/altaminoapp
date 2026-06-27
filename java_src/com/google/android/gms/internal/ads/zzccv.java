package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzccv implements zzdti<zzccj> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzbai> zzfjy;
    private final zzdtu<zzdh> zzfni;
    private final zzdtu<com.google.android.gms.ads.internal.zza> zzfrr;
    private final zzdtu<zzbhf> zzfsx;

    public zzccv(zzdtu<Context> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<zzdh> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<com.google.android.gms.ads.internal.zza> zzdtuVar5, zzdtu<zzbhf> zzdtuVar6) {
        this.zzeoj = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfni = zzdtuVar3;
        this.zzfjy = zzdtuVar4;
        this.zzfrr = zzdtuVar5;
        this.zzfsx = zzdtuVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccj(this.zzeoj.get(), this.zzfhi.get(), this.zzfni.get(), this.zzfjy.get(), this.zzfrr.get(), this.zzfsx.get());
    }
}
