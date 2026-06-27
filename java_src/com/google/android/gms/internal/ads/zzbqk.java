package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbqk implements zzdti<zzbuz<zzbsr>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbme> zzfhs;

    private zzbqk(zzdtu<zzbme> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfhs = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzbqk zzg(zzdtu<zzbme> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzbqk(zzdtuVar, zzdtuVar2);
    }

    public static zzbuz<zzbsr> zza(zzbme zzbmeVar, Executor executor) {
        return (zzbuz) zzdto.zza(new zzbuz(zzbmeVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhs.get(), this.zzfgh.get());
    }
}
