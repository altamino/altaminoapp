package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzcsm implements zzdti<zzcsk<zzcsg>> {
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzcsh> zzgha;

    public zzcsm(zzdtu<zzcsh> zzdtuVar, zzdtu<Clock> zzdtuVar2) {
        this.zzgha = zzdtuVar;
        this.zzfgj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcsk) zzdto.zza(new zzcsk(this.zzgha.get(), 10000L, this.zzfgj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
