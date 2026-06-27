package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbrk implements zzdti<zzbri> {
    private final zzdtu<Set<zzbuz<zzxr>>> zzfhq;

    private zzbrk(zzdtu<Set<zzbuz<zzxr>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbrk zzm(zzdtu<Set<zzbuz<zzxr>>> zzdtuVar) {
        return new zzbrk(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbri(this.zzfhq.get());
    }
}
