package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcty implements zzdti<zzctw> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<Set<String>> zzggm;

    private zzcty(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<Set<String>> zzdtuVar3) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzggm = zzdtuVar3;
    }

    public static zzcty zzn(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<Set<String>> zzdtuVar3) {
        return new zzcty(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzctw(this.zzfgh.get(), this.zzeoj.get(), this.zzggm.get());
    }
}
