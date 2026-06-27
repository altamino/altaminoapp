package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbsm;

/* loaded from: classes2.dex */
public final class zzcoi<AdT, AdapterT, ListenerT extends zzbsm> implements zzdti<zzcoe<AdT, AdapterT, ListenerT>> {
    private final zzdtu<zzcjz<AdapterT, ListenerT>> zzfek;
    private final zzdtu<zzbbl> zzfhi;
    private final zzdtu<zzczt> zzfhv;
    private final zzdtu<zzcka<AdT, AdapterT, ListenerT>> zzgcl;

    private zzcoi(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzcjz<AdapterT, ListenerT>> zzdtuVar3, zzdtu<zzcka<AdT, AdapterT, ListenerT>> zzdtuVar4) {
        this.zzfhv = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfek = zzdtuVar3;
        this.zzgcl = zzdtuVar4;
    }

    public static <AdT, AdapterT, ListenerT extends zzbsm> zzcoi<AdT, AdapterT, ListenerT> zzf(zzdtu<zzczt> zzdtuVar, zzdtu<zzbbl> zzdtuVar2, zzdtu<zzcjz<AdapterT, ListenerT>> zzdtuVar3, zzdtu<zzcka<AdT, AdapterT, ListenerT>> zzdtuVar4) {
        return new zzcoi<>(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcoe(this.zzfhv.get(), this.zzfhi.get(), this.zzfek.get(), this.zzgcl.get());
    }
}
