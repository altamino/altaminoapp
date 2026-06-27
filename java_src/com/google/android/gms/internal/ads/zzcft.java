package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcft implements zzdti<Set<zzbuz<zzbsr>>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcfz> zzfuc;
    private final zzcfp zzfux;

    private zzcft(zzcfp zzcfpVar, zzdtu<zzcfz> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        this.zzfux = zzcfpVar;
        this.zzfuc = zzdtuVar;
        this.zzfgh = zzdtuVar2;
    }

    public static zzcft zzd(zzcfp zzcfpVar, zzdtu<zzcfz> zzdtuVar, zzdtu<Executor> zzdtuVar2) {
        return new zzcft(zzcfpVar, zzdtuVar, zzdtuVar2);
    }

    public static Set<zzbuz<zzbsr>> zza(zzcfp zzcfpVar, zzcfz zzcfzVar, Executor executor) {
        return (Set) zzdto.zza(zzcfp.zzc(zzcfzVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfux, this.zzfuc.get(), this.zzfgh.get());
    }
}
