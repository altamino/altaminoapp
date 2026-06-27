package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcmf implements zzdti<zzcme> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbxo> zzfzs;

    public zzcmf(zzdtu<Context> zzdtuVar, zzdtu<zzbxo> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfzs = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcme(this.zzeoj.get(), this.zzfzs.get());
    }
}
