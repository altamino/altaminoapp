package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcrb implements zzdti<zzcqz> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzchz> zzfvx;

    public zzcrb(zzdtu<Executor> zzdtuVar, zzdtu<zzchz> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzfvx = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcqz(this.zzfgh.get(), this.zzfvx.get());
    }
}
