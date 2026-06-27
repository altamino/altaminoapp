package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcve<T> implements zzdti<zzcvb<T>> {
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<Set<zzcva<? extends zzcuz<T>>>> zzgik;

    private zzcve(zzdtu<Executor> zzdtuVar, zzdtu<Set<zzcva<? extends zzcuz<T>>>> zzdtuVar2) {
        this.zzfgh = zzdtuVar;
        this.zzgik = zzdtuVar2;
    }

    public static <T> zzcve<T> zzas(zzdtu<Executor> zzdtuVar, zzdtu<Set<zzcva<? extends zzcuz<T>>>> zzdtuVar2) {
        return new zzcve<>(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcvb(this.zzfgh.get(), this.zzgik.get());
    }
}
