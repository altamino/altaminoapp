package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbud implements zzdti<Set<zzbuz<zzbro>>> {
    private final zzbtv zzfky;

    private zzbud(zzbtv zzbtvVar) {
        this.zzfky = zzbtvVar;
    }

    public static zzbud zzk(zzbtv zzbtvVar) {
        return new zzbud(zzbtvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzfky.zzagn(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
