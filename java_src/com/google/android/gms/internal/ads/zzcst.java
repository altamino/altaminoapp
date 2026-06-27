package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcst implements zzdti<zzcsp> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<Context> zzfjq;

    private zzcst(zzdtu<Context> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        this.zzfjq = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzcst zzal(zzdtu<Context> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        return new zzcst(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcsp(this.zzfjq.get(), this.zzfgh.get());
    }
}
