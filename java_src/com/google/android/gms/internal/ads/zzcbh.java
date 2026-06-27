package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcbh implements zzdti<zzcbd> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcau> zzfrj;

    public zzcbh(zzdtu<Executor> zzdtuVar, zzdtu<zzcau> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzfrj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcbd(this.zzfgh.get(), this.zzfrj.get());
    }
}
