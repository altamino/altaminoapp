package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzchb implements zzdti<zzbbh<String>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<zzdh> zzfwp;
    private final zzdtu<zzbbl> zzfwq;

    private zzchb(zzdtu<zzdh> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzbbl> zzdtuVar3) {
        this.zzfwp = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfwq = zzdtuVar3;
    }

    public static zzchb zzm(zzdtu<zzdh> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<zzbbl> zzdtuVar3) {
        return new zzchb(zzdtuVar, zzdtuVar2, zzdtuVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final zzdh zzdhVar = this.zzfwp.get();
        final Context context = this.zzeoj.get();
        return (zzbbh) zzdto.zza(this.zzfwq.get().submit(new Callable(zzdhVar, context) { // from class: com.google.android.gms.internal.ads.zzcgw
            private final Context zzcjt;
            private final zzdh zzfwa;

            {
                this.zzfwa = zzdhVar;
                this.zzcjt = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdh zzdhVar2 = this.zzfwa;
                return zzdhVar2.zzcg().zza(this.zzcjt);
            }
        }), "Cannot return null from a non-@Nullable @Provides method");
    }
}
