package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtz implements zzdti<Set<zzbuz<zzbsr>>> {
    private final zzbtv zzfky;

    private zzbtz(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbtz zzf(zzbtv zzbtvVar) {
        return new zzbtz(zzbtvVar);
    }

    public static Set<zzbuz<zzbsr>> zzg(zzbtv zzbtvVar) {
        return (Set) zzdto.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzg(this.zzfky);
    }
}
