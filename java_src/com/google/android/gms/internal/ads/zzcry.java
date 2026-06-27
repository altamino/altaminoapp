package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcry implements zzdti<zzcrv> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzawm> zzggj;

    private zzcry(zzdtu<Executor> zzdtuVar, zzdtu<zzawm> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzggj = zzdtuVar2;
    }

    public static zzcry zzaj(zzdtu<Executor> zzdtuVar, zzdtu<zzawm> zzdtuVar2) {
        return new zzcry(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcrv(this.zzfgh.get(), this.zzggj.get());
    }
}
