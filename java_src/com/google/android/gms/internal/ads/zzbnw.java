package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbnw implements zzdti<Set<zzbuz<zzue>>> {
    private final zzbnk zzfhp;
    private final zzdtu<zzbov> zzfhs;

    public zzbnw(zzbnk zzbnkVar, zzdtu<zzbov> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfhs = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(Collections.singleton(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
