package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcfm implements zzdti<zzcfk> {
    private final zzdtu<Clock> zzfgj;
    private final zzdtu<zzcfi> zzfuv;
    private final zzdtu<Set<zzcfl>> zzfuw;

    private zzcfm(zzdtu<zzcfi> zzdtuVar, zzdtu<Set<zzcfl>> zzdtuVar2, zzdtu<Clock> zzdtuVar3) {
        this.zzfuv = zzdtuVar;
        this.zzfuw = zzdtuVar2;
        this.zzfgj = zzdtuVar3;
    }

    public static zzcfm zzl(zzdtu<zzcfi> zzdtuVar, zzdtu<Set<zzcfl>> zzdtuVar2, zzdtu<Clock> zzdtuVar3) {
        return new zzcfm(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcfk(this.zzfuv.get(), this.zzfuw.get(), this.zzfgj.get());
    }
}
