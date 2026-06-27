package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzbqd implements zzdti<zzawj> {
    private final zzdtu<zzawu> zzerc;
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzcxv> zzfhr;

    private zzbqd(zzdtu<Clock> zzdtuVar, zzdtu<zzawu> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3) {
        this.zzfgj = zzdtuVar;
        this.zzerc = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
    }

    public static zzbqd zzg(zzdtu<Clock> zzdtuVar, zzdtu<zzawu> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3) {
        return new zzbqd(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzawj) zzdto.zza(this.zzerc.get().zza(this.zzfgj.get(), this.zzfhr.get().zzglb), "Cannot return null from a non-@Nullable @Provides method");
    }
}
