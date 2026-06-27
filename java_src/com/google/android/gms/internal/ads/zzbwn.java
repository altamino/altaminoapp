package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbwn implements zzdti<zzbuz<zzbto>> {
    private final zzdtu<Executor> zzfgh;
    private final zzbvz zzflo;

    private zzbwn(zzbvz zzbvzVar, zzdtu<Executor> zzdtuVar) {
        this.zzflo = zzbvzVar;
        this.zzfgh = zzdtuVar;
    }

    public static zzbwn zzd(zzbvz zzbvzVar, zzdtu<Executor> zzdtuVar) {
        return new zzbwn(zzbvzVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final zzbvz zzbvzVar = this.zzflo;
        return (zzbuz) zzdto.zza(new zzbuz(new zzbto(zzbvzVar) { // from class: com.google.android.gms.internal.ads.zzbwb
            private final zzbvz zzfln;

            {
                this.zzfln = zzbvzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbto
            public final void zzafq() {
                this.zzfln.zzahc();
            }
        }, this.zzfgh.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
