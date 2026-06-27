package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbuy implements zzdti<zzbuv> {
    private final zzdtu<Set<zzbuz<zzbuu>>> zzfhq;

    private zzbuy(zzdtu<Set<zzbuz<zzbuu>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbuy zzw(zzdtu<Set<zzbuz<zzbuu>>> zzdtuVar) {
        return new zzbuy(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbuv(this.zzfhq.get());
    }
}
