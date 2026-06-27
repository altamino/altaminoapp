package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzbxv implements zzdti<zzcyb<zzccj>> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzccj> zzfmj;

    public zzbxv(zzdtu<zzccj> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        this.zzfmj = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final zzdtu<zzccj> zzdtuVar = this.zzfmj;
        return (zzcyb) zzdto.zza(new zzcyb(new Callable(zzdtuVar) { // from class: com.google.android.gms.internal.ads.zzbxq
            private final zzdtu zzfmg;

            {
                this.zzfmg = zzdtuVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzccj zzccjVar = (zzccj) this.zzfmg.get();
                zzccjVar.zzajj();
                return zzccjVar;
            }
        }, this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
