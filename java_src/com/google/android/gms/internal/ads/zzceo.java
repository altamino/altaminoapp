package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzceo implements zzdti<Set<zzbuz<zzczz>>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<zzcex> zzfgm;

    private zzceo(zzdtu<Executor> zzdtuVar, zzdtu<zzcex> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzfgm = zzdtuVar2;
    }

    public static zzceo zzq(zzdtu<Executor> zzdtuVar, zzdtu<zzcex> zzdtuVar2) {
        return new zzceo(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Set setEmptySet;
        Executor executor = this.zzfgh.get();
        zzcex zzcexVar = this.zzfgm.get();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcul)).booleanValue()) {
            setEmptySet = Collections.singleton(new zzbuz(zzcexVar, executor));
        } else {
            setEmptySet = Collections.emptySet();
        }
        return (Set) zzdto.zza(setEmptySet, "Cannot return null from a non-@Nullable @Provides method");
    }
}
