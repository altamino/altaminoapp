package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzcsn implements zzdti<zzcsk<zzcvf>> {
    private final zzdtu<zzcvg> zzeph;
    private final zzdtu<Clock> zzfgj;

    public zzcsn(zzdtu<zzcvg> zzdtuVar, zzdtu<Clock> zzdtuVar2) {
        this.zzeph = zzdtuVar;
        this.zzfgj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcsk) zzdto.zza(new zzcsk(this.zzeph.get(), ((Long) zzyt.zzpe().zzd(zzacu.zzcqm)).longValue(), this.zzfgj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
