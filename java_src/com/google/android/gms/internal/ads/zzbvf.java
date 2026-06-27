package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbvf implements zzdti<zzbvd> {
    private final zzdtu<Set<zzbuz<zzbvg>>> zzfhq;

    private zzbvf(zzdtu<Set<zzbuz<zzbvg>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbvf zzx(zzdtu<Set<zzbuz<zzbvg>>> zzdtuVar) {
        return new zzbvf(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbvd(this.zzfhq.get());
    }
}
