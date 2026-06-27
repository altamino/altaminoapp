package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbuc implements zzdti<Set<zzbuz<zzxr>>> {
    private final zzbtv zzfky;

    private zzbuc(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbuc zzj(zzbtv zzbtvVar) {
        return new zzbuc(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzfky.zzagr(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
