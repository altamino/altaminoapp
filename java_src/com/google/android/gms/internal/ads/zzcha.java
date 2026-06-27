package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcha implements zzdti<zzbbh<Bundle>> {
    private final zzdtu<zzcvb<Bundle>> zzeth;
    private final zzdtu<zzczt> zzfhv;

    private zzcha(zzdtu<zzczt> zzdtuVar, zzdtu<zzcvb<Bundle>> zzdtuVar2) {
        this.zzfhv = zzdtuVar;
        this.zzeth = zzdtuVar2;
    }

    public static zzcha zzz(zzdtu<zzczt> zzdtuVar, zzdtu<zzcvb<Bundle>> zzdtuVar2) {
        return new zzcha(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbbh) zzdto.zza(this.zzfhv.get().zzv(zzczs.SIGNALS).zzb(this.zzeth.get().zzu(new Bundle())).zzane(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
