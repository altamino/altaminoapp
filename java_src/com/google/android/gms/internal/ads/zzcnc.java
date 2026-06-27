package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcnc implements zzdti<zzcna> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcdf> zzfzs;

    public zzcnc(zzdtu<Context> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<zzcdf> zzdtuVar3) {
        this.zzeoj = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfzs = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcna(this.zzeoj.get(), this.zzfhi.get(), this.zzfzs.get());
    }
}
