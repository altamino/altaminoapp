package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbqg implements zzdti<zzbuz<zzbvg>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbvh> zzfhs;

    private zzbqg(zzdtu<zzbvh> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfhs = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzbqg zzc(zzdtu<zzbvh> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzbqg(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
