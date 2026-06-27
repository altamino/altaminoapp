package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbxb implements zzdti<zzbxa> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<Integer> zzfgq;
    private final zzdtu<zzbgz> zzfhf;
    private final zzdtu<zzcxm> zzfhj;

    private zzbxb(zzdtu<Context> zzdtuVar, zzdtu<zzbgz> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<Integer> zzdtuVar5) {
        this.zzeoj = zzdtuVar;
        this.zzfhf = zzdtuVar2;
        this.zzfhj = zzdtuVar3;
        this.zzfej = zzdtuVar4;
        this.zzfgq = zzdtuVar5;
    }

    public static zzbxb zzc(zzdtu<Context> zzdtuVar, zzdtu<zzbgz> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzbai> zzdtuVar4, zzdtu<Integer> zzdtuVar5) {
        return new zzbxb(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4, zzdtuVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxa(this.zzeoj.get(), this.zzfhf.get(), this.zzfhj.get(), this.zzfej.get(), this.zzfgq.get().intValue());
    }
}
