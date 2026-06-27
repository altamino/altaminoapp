package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcrr implements zzdti<zzcrp> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcsk<zzcvf>> zzeph;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzawm> zzggj;

    private zzcrr(zzdtu<zzcsk<zzcvf>> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<Context> zzdtuVar3, zzdtu<zzawm> zzdtuVar4) {
        this.zzeph = zzdtuVar;
        this.zzfhr = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
        this.zzggj = zzdtuVar4;
    }

    public static zzcrr zzg(zzdtu<zzcsk<zzcvf>> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<Context> zzdtuVar3, zzdtu<zzawm> zzdtuVar4) {
        return new zzcrr(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcrp(this.zzeph.get(), this.zzfhr.get(), this.zzeoj.get(), this.zzggj.get());
    }
}
