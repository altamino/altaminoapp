package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbvc implements zzdti<zzbva> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxm> zzfhj;
    private final zzdtu<Set<zzbuz<zzue>>> zzfhq;

    private zzbvc(zzdtu<Context> zzdtuVar, zzdtu<Set<zzbuz<zzue>>> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3) {
        this.zzeoj = zzdtuVar;
        this.zzfhq = zzdtuVar2;
        this.zzfhj = zzdtuVar3;
    }

    public static zzbvc zzh(zzdtu<Context> zzdtuVar, zzdtu<Set<zzbuz<zzue>>> zzdtuVar2, zzdtu<zzcxm> zzdtuVar3) {
        return new zzbvc(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbva(this.zzeoj.get(), this.zzfhq.get(), this.zzfhj.get());
    }
}
