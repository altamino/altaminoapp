package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbqi implements zzdti<zzbuz<zzbrl>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbme> zzfhs;

    private zzbqi(zzdtu<zzbme> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfhs = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzbqi zze(zzdtu<zzbme> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzbqi(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
