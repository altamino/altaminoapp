package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcsx implements zzdti<zzcsv> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;

    private zzcsx(zzdtu<Context> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzcsx zzam(zzdtu<Context> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        return new zzcsx(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcsv(this.zzeoj.get(), this.zzfgh.get());
    }
}
