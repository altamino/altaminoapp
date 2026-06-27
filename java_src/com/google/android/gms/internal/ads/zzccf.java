package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzccf implements zzdti<zzccd> {
    private final zzdtu<zzbzl> zzeym;
    private final zzdtu<Context> zzfjq;
    private final zzdtu<zzbyt> zzfnh;
    private final zzdtu<zzbyn> zzfsd;

    private zzccf(zzdtu<Context> zzdtuVar, zzdtu<zzbyt> zzdtuVar2, zzdtu<zzbzl> zzdtuVar3, zzdtu<zzbyn> zzdtuVar4) {
        this.zzfjq = zzdtuVar;
        this.zzfnh = zzdtuVar2;
        this.zzeym = zzdtuVar3;
        this.zzfsd = zzdtuVar4;
    }

    public static zzccf zzb(zzdtu<Context> zzdtuVar, zzdtu<zzbyt> zzdtuVar2, zzdtu<zzbzl> zzdtuVar3, zzdtu<zzbyn> zzdtuVar4) {
        return new zzccf(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccd(this.zzfjq.get(), this.zzfnh.get(), this.zzeym.get(), this.zzfsd.get());
    }
}
