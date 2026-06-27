package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzbun implements zzdti<zzcmu> {
    private final zzdtu<Clock> zzfgj;
    private final zzbtv zzfky;

    private zzbun(zzbtv zzbtvVar, zzdtu<Clock> zzdtuVar) {
        this.zzfky = zzbtvVar;
        this.zzfgj = zzdtuVar;
    }

    public static zzbun zzb(zzbtv zzbtvVar, zzdtu<Clock> zzdtuVar) {
        return new zzbun(zzbtvVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcmu) zzdto.zza(this.zzfky.zza(this.zzfgj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
