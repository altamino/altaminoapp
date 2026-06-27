package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbuf implements zzdti<Set<zzbuz<zzbrw>>> {
    private final zzbtv zzfky;

    private zzbuf(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbuf zzl(zzbtv zzbtvVar) {
        return new zzbuf(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzfky.zzags(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
