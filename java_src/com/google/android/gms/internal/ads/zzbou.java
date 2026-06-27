package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbou implements zzdti<zzbot> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzbai> zzfej;
    private final zzdtu<zzbgz> zzfhf;
    private final zzdtu<zzcxm> zzfhj;

    public zzbou(zzdtu<Context> zzdtuVar, zzdtu<zzbgz> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3, zzdtu<zzbai> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzfhf = zzdtuVar2;
        this.zzfhj = zzdtuVar3;
        this.zzfej = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbot(this.zzeoj.get(), this.zzfhf.get(), this.zzfhj.get(), this.zzfej.get());
    }
}
