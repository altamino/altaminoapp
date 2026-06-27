package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbqs implements zzdti<zzbqr> {
    private final zzdtu<zzcgb> zzeox;
    private final zzdtu<zzaxb> zzerj;
    private final zzdtu<zzbai> zzfgp;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<Context> zzfjq;

    private zzbqs(zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<zzaxb> zzdtuVar4, zzdtu<zzcgb> zzdtuVar5) {
        this.zzfjq = zzdtuVar;
        this.zzfhr = zzdtuVar2;
        this.zzfgp = zzdtuVar3;
        this.zzerj = zzdtuVar4;
        this.zzeox = zzdtuVar5;
    }

    public static zzbqs zzb(zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<zzbai> zzdtuVar3, zzdtu<zzaxb> zzdtuVar4, zzdtu<zzcgb> zzdtuVar5) {
        return new zzbqs(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbqr(this.zzfjq.get(), this.zzfhr.get(), this.zzfgp.get(), this.zzerj.get(), this.zzeox.get());
    }
}
