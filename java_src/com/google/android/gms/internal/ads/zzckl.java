package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzckl implements zzdti<zzckj> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<zzboc> zzfzs;

    public zzckl(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzboc> zzdtuVar3) {
        this.zzeoj = zzdtuVar;
        this.zzfgp = zzdtuVar2;
        this.zzfzs = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzckj(this.zzeoj.get(), this.zzfgp.get(), this.zzfzs.get());
    }
}
