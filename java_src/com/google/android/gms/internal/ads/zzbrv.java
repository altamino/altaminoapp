package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbrv implements zzdti<zzbrt> {
    private final zzdtu<Set<zzbuz<zzbrw>>> zzfhq;

    private zzbrv(zzdtu<Set<zzbuz<zzbrw>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbrv zzn(zzdtu<Set<zzbuz<zzbrw>>> zzdtuVar) {
        return new zzbrv(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbrt(this.zzfhq.get());
    }
}
