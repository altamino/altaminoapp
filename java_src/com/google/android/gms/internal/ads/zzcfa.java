package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcfa implements zzdti<zzcex> {
    private final zzdtu<zzwj> zzfuc;
    private final zzdtu<Map<zzczs, zzcez>> zzfun;

    private zzcfa(zzdtu<zzwj> zzdtuVar, zzdtu<Map<zzczs, zzcez>> zzdtuVar2) {
        this.zzfuc = zzdtuVar;
        this.zzfun = zzdtuVar2;
    }

    public static zzcfa zzr(zzdtu<zzwj> zzdtuVar, zzdtu<Map<zzczs, zzcez>> zzdtuVar2) {
        return new zzcfa(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcex(this.zzfuc.get(), this.zzfun.get());
    }
}
