package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcpj implements zzdti<zzcpf> {
    private final zzdtu<zzclc> zzeog;
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;

    public zzcpj(zzdtu<zzclc> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<Context> zzdtuVar3) {
        this.zzeog = zzdtuVar;
        this.zzfgh = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcpf(this.zzeog.get(), this.zzfgh.get(), this.zzeoj.get());
    }
}
