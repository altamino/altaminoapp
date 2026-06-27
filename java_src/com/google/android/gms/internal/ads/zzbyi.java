package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzbyi implements zzdti<zzbva> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzcxm> zzfhj;

    public zzbyi(zzdtu<Context> zzdtuVar, zzdtu<zzcxm> zzdtuVar2) {
        this.zzeoj = zzdtuVar;
        this.zzfhj = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbva) zzdto.zza(new zzbva(this.zzeoj.get(), new HashSet(), this.zzfhj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
