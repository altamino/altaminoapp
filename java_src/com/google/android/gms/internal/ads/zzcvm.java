package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcvm implements zzdti<zzcvk> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;

    private zzcvm(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
    }

    public static zzcvm zzat(zzdtu<zzbbl> zzdtuVar, zzdtu<Context> zzdtuVar2) {
        return new zzcvm(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcvk(this.zzfgh.get(), this.zzeoj.get());
    }
}
