package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbmm implements zzdti<zzbml> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzty> zzffq;

    private zzbmm(zzdtu<Context> zzdtuVar, zzdtu<zzty> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzffq = zzdtuVar2;
    }

    public static zzbmm zza(zzdtu<Context> zzdtuVar, zzdtu<zzty> zzdtuVar2) {
        return new zzbmm(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbml(this.zzeoj.get(), this.zzffq.get());
    }
}
