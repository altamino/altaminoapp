package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbzg implements zzdti<zzavf> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxv> zzfhr;
    private final zzbzf zzfpe;

    private zzbzg(zzbzf zzbzfVar, zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2) {
        this.zzfpe = zzbzfVar;
        this.zzeoj = zzdtuVar;
        this.zzfhr = zzdtuVar2;
    }

    public static zzbzg zza(zzbzf zzbzfVar, zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2) {
        return new zzbzg(zzbzfVar, zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzavf) zzdto.zza(new zzavf(this.zzeoj.get(), this.zzfhr.get().zzglb), "Cannot return null from a non-@Nullable @Provides method");
    }
}
