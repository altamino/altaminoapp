package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcvi implements zzdti<zzcvg> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;

    public zzcvi(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcvg(this.zzfgh.get(), this.zzeoj.get());
    }
}
