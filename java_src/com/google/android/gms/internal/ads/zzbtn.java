package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtn implements zzdti<zzbtl> {
    private final zzdtu<Set<zzbuz<zzbto>>> zzfhq;

    private zzbtn(zzdtu<Set<zzbuz<zzbto>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbtn zzu(zzdtu<Set<zzbuz<zzbto>>> zzdtuVar) {
        return new zzbtn(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbtl(this.zzfhq.get());
    }
}
