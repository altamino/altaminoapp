package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdab implements zzdti<zzczu> {
    private final zzdtu<Set<zzbuz<zzczz>>> zzfhq;

    private zzdab(zzdtu<Set<zzbuz<zzczz>>> zzdtuVar) {
        this.zzfhq = zzdtuVar;
    }

    public static zzdab zzan(zzdtu<Set<zzbuz<zzczz>>> zzdtuVar) {
        return new zzdab(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzczu(this.zzfhq.get());
    }
}
