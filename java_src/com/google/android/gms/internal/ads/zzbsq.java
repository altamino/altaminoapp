package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbsq implements zzdti<zzbso> {
    private final zzdtu<Set<zzbuz<zzbsr>>> zzfhq;

    private zzbsq(zzdtu<Set<zzbuz<zzbsr>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbsq zzq(zzdtu<Set<zzbuz<zzbsr>>> zzdtuVar) {
        return new zzbsq(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbso(this.zzfhq.get());
    }
}
