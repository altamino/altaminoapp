package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbnx implements zzdti<zzavf> {
    private final zzdtu<Context> zzeoj;
    private final zzbnk zzfhp;
    private final zzdtu<zzcxv> zzfhr;

    public zzbnx(zzbnk zzbnkVar, zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2) {
        this.zzfhp = zzbnkVar;
        this.zzeoj = zzdtuVar;
        this.zzfhr = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzavf) zzdto.zza(new zzavf(this.zzeoj.get(), this.zzfhr.get().zzglb), "Cannot return null from a non-@Nullable @Provides method");
    }
}
