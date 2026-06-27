package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtj implements zzdti<zzbtg> {
    private final zzdtu<Set<zzbuz<zzbtk>>> zzfhq;

    private zzbtj(zzdtu<Set<zzbuz<zzbtk>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzbtj zzt(zzdtu<Set<zzbuz<zzbtk>>> zzdtuVar) {
        return new zzbtj(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbtg(this.zzfhq.get());
    }
}
