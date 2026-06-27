package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcbv implements zzdti<zzcbi> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfhi;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzcdn> zzfqk;

    public zzcbv(zzdtu<Context> zzdtuVar, zzdtu<zzcxv> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<zzcdn> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzfhr = zzdtuVar2;
        this.zzfhi = zzdtuVar3;
        this.zzfqk = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcbi(this.zzeoj.get(), this.zzfhr.get(), this.zzfhi.get(), this.zzfqk.get());
    }
}
