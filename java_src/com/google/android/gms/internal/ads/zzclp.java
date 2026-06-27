package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzclp implements zzdti<zzcln> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<zzbws> zzfzs;

    public zzclp(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzbws> zzdtuVar3) {
        this.zzeoj = zzdtuVar;
        this.zzfgp = zzdtuVar2;
        this.zzfzs = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcln(this.zzeoj.get(), this.zzfgp.get(), this.zzfzs.get());
    }
}
