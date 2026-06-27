package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcam implements zzdti<zzbuz<VideoController.VideoLifecycleCallbacks>> {
    private final zzdtu<zzccw> zzfgm;
    private final zzdtu<Executor> zzfhi;
    private final zzcag zzfqr;

    public zzcam(zzcag zzcagVar, zzdtu<zzccw> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfqr = zzcagVar;
        this.zzfgm = zzdtuVar;
        this.zzfhi = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfgm.get(), this.zzfhi.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
