package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcsf implements zzdti<zzcsd> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;

    private zzcsf(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
    }

    public static zzcsf zzak(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        return new zzcsf(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcsd(this.zzfgh.get(), this.zzeoj.get());
    }
}
