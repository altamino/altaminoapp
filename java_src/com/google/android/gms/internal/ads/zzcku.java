package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcku implements zzdti<zzckr> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxk> zzfey;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzbws> zzfzs;

    public zzcku(zzdtu<Context> zzdtuVar, zzdtu<Executor> zzdtuVar2, zzdtu<zzbws> zzdtuVar3, zzdtu<zzcxk> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzfhi = zzdtuVar2;
        this.zzfzs = zzdtuVar3;
        this.zzfey = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzckr(this.zzeoj.get(), this.zzfhi.get(), this.zzfzs.get(), this.zzfey.get());
    }
}
