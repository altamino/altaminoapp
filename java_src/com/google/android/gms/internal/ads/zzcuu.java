package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcuu implements zzdti<zzcus> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzavg> zzfly;

    private zzcuu(zzdtu<zzavg> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<Context> zzdtuVar3) {
        this.zzfly = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
    }

    public static zzcuu zzo(zzdtu<zzavg> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<Context> zzdtuVar3) {
        return new zzcuu(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcus(this.zzfly.get(), this.zzfgh.get(), this.zzeoj.get());
    }
}
