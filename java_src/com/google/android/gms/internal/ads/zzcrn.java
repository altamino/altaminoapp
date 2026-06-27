package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcrn implements zzdti<zzcrk> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzbbh<String>> zzgge;

    private zzcrn(zzdtu<zzbbh<String>> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzgge = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzcrn zzai(zzdtu<zzbbh<String>> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzcrn(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcrk(this.zzgge.get(), this.zzfgh.get());
    }
}
