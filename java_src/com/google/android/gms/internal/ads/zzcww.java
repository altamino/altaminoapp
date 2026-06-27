package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzcww implements zzdti<zzcwu> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<ScheduledExecutorService> zzfjc;
    private final zzdtu<zzaqm> zzgit;

    public zzcww(zzdtu<zzaqm> zzdtuVar, zzdtu<ScheduledExecutorService> zzdtuVar2, zzdtu<Context> zzdtuVar3) {
        this.zzgit = zzdtuVar;
        this.zzfjc = zzdtuVar2;
        this.zzeoj = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcwu(this.zzgit.get(), this.zzfjc.get(), this.zzeoj.get());
    }
}
