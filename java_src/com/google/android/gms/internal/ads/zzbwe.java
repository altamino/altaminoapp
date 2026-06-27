package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbwe implements zzdti<Set<zzbuz<zzbrl>>> {
    private final zzdtu<zzbxc> zzfhs;
    private final zzbvz zzflo;

    private zzbwe(zzbvz zzbvzVar, zzdtu<zzbxc> zzdtuVar) {
        this.zzflo = zzbvzVar;
        this.zzfhs = zzdtuVar;
    }

    public static zzbwe zza(zzbvz zzbvzVar, zzdtu<zzbxc> zzdtuVar) {
        return new zzbwe(zzbvzVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Set) zzdto.zza(this.zzflo.zza(this.zzfhs.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
