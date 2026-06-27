package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcoq implements zzdti<zzcok> {
    private final zzdtu<zzbbl> zzfhi;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzboc> zzfzs;
    private final zzdtu<Context> zzgct;
    private final zzdtu<zzado> zzgcu;

    public zzcoq(zzdtu<Context> zzdtuVar, zzdtu<zzboc> zzdtuVar2, zzdtu<zzczt> zzdtuVar3, zzdtu<zzbbl> zzdtuVar4, zzdtu<zzado> zzdtuVar5) {
        this.zzgct = zzdtuVar;
        this.zzfzs = zzdtuVar2;
        this.zzfhv = zzdtuVar3;
        this.zzfhi = zzdtuVar4;
        this.zzgcu = zzdtuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcok(this.zzgct.get(), this.zzfzs.get(), this.zzfhv.get(), this.zzfhi.get(), this.zzgcu.get());
    }
}
