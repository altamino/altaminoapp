package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcpn implements zzdti<zzcpm> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzyz> zzgdp;
    private final zzdtu<zzbnf> zzgdq;

    public zzcpn(zzdtu<Context> zzdtuVar, zzdtu<zzyz> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<zzbnf> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzgdp = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzgdq = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcpm(this.zzeoj.get(), this.zzgdp.get(), this.zzfhr.get(), this.zzgdq.get());
    }
}
