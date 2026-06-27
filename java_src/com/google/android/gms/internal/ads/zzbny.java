package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbny implements zzdti<zzbuz<zzue>> {
    private final zzdtu<Executor> zzfgh;
    private final zzbnk zzfhp;
    private final zzdtu<zzboz> zzfhs;

    public zzbny(zzbnk zzbnkVar, zzdtu<zzboz> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfhp = zzbnkVar;
        this.zzfhs = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
