package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzbzs implements zzdti<zzbzq> {
    private final zzdtu<zzccj> zzeve;
    private final zzdtu<Clock> zzfgj;

    public zzbzs(zzdtu<zzccj> zzdtuVar, zzdtu<Clock> zzdtuVar2) {
        this.zzeve = zzdtuVar;
        this.zzfgj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbzq(this.zzeve.get(), this.zzfgj.get());
    }
}
