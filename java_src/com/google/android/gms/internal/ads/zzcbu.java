package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcbu implements zzdti<zzcbp> {
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzbmy> zzfql;
    private final zzdtu<zzbva> zzfsa;

    public zzcbu(zzdtu<Executor> zzdtuVar, zzdtu<zzbmy> zzdtuVar2, zzdtu<zzbva> zzdtuVar3) {
        this.zzfhi = zzdtuVar;
        this.zzfql = zzdtuVar2;
        this.zzfsa = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcbp(this.zzfhi.get(), this.zzfql.get(), this.zzfsa.get());
    }
}
