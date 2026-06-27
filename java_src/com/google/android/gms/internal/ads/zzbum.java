package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbum implements zzdti<Set<zzbuz<zzbvg>>> {
    private final zzbtv zzfky;

    private zzbum(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbum zzt(zzbtv zzbtvVar) {
        return new zzbum(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
