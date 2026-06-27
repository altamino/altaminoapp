package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzbob implements zzdti<zzcva<zzcrd>> {
    private final zzdtu<ScheduledExecutorService> zzfgw;
    private final zzdtu<zzcre> zzfhu;

    public zzbob(zzdtu<zzcre> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2) {
        this.zzfhu = zzdtuVar;
        this.zzfgw = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzcva) zzdto.zza(new zzctz(this.zzfhu.get(), 0L, this.zzfgw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
