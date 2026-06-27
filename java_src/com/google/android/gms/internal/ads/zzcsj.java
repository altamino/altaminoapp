package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcsj implements zzdti<zzcsh> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;

    public zzcsj(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcsh(this.zzfgh.get(), this.zzeoj.get());
    }
}
