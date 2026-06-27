package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbnt implements zzdti<Set<zzbuz<zzbsr>>> {
    private final zzbnk zzfhp;
    private final zzdtu<zzbov> zzfhs;

    public zzbnt(zzbnk zzbnkVar, zzdtu<zzbov> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfhs = zzdtuVar;
    }

    public static Set<zzbuz<zzbsr>> zza(zzbnk zzbnkVar, zzbov zzbovVar) {
        return (Set) zzdto.zza(Collections.singleton(new zzbuz(zzbovVar, zzbbm.zzeaf)), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp, this.zzfhs.get());
    }
}
