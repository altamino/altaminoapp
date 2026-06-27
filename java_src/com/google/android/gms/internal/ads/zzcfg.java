package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcfg implements zzdti<zzbuz<zzczz>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcfk> zzfgm;

    private zzcfg(zzdtu<zzcfk> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfgm = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzcfg zzw(zzdtu<zzcfk> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzcfg(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfgm.get(), this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
