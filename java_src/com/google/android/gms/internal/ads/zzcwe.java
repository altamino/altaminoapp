package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcwe implements zzdti<zzcwc> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzvx> zzgit;

    public zzcwe(zzdtu<zzvx> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<Context> zzdtuVar3) {
        this.zzgit = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcwc(this.zzgit.get(), this.zzfgh.get(), this.zzeoj.get());
    }
}
