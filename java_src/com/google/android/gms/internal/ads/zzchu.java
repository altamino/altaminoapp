package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzchu implements zzdti<zzchq> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcxv> zzfhr;
    private final zzdtu<zzbai> zzfwo;

    private zzchu(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<Executor> zzdtuVar4) {
        this.zzeoj = zzdtuVar;
        this.zzfwo = zzdtuVar2;
        this.zzfhr = zzdtuVar3;
        this.zzfgh = zzdtuVar4;
    }

    public static zzchu zzd(zzdtu<Context> zzdtuVar, zzdtu<zzbai> zzdtuVar2, zzdtu<zzcxv> zzdtuVar3, zzdtu<Executor> zzdtuVar4) {
        return new zzchu(zzdtuVar, zzdtuVar2, zzdtuVar3, zzdtuVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzchq(this.zzeoj.get(), this.zzfwo.get(), this.zzfhr.get(), this.zzfgh.get());
    }
}
