package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbmr implements zzdti<zzbmg> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzty> zzfgk;
    private final zzdtu<zzaly> zzfgl;

    private zzbmr(zzdtu<zzty> zzdtuVar, zzdtu<zzaly> zzdtuVar2, zzdtu<Executor> zzdtuVar3) {
        this.zzfgk = zzdtuVar;
        this.zzfgl = zzdtuVar2;
        this.zzfgh = zzdtuVar3;
    }

    public static zzbmr zzb(zzdtu<zzty> zzdtuVar, zzdtu<zzaly> zzdtuVar2, zzdtu<Executor> zzdtuVar3) {
        return new zzbmr(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        zzty zztyVar = this.zzfgk.get();
        return (zzbmg) zzdto.zza(new zzbmg(zztyVar.zzmi(), this.zzfgl.get(), this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
