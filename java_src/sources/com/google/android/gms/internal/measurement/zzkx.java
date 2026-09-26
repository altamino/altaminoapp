package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes6.dex */
final class zzkx {
    private static final zzkx zza = new zzkx();
    private final ConcurrentMap<Class<?>, zzlb<?>> zzc = new ConcurrentHashMap();
    private final zzle zzb = new zzjx();

    public static zzkx zza() {
        return zza;
    }

    public final <T> zzlb<T> zza(Class<T> cls) {
        zziz.zza(cls, "messageType");
        zzlb<T> zzlbVar = (zzlb) this.zzc.get(cls);
        if (zzlbVar != null) {
            return zzlbVar;
        }
        zzlb<T> zzlbVarZza = this.zzb.zza(cls);
        zziz.zza(cls, "messageType");
        zziz.zza(zzlbVarZza, "schema");
        zzlb<T> zzlbVar2 = (zzlb) this.zzc.putIfAbsent(cls, zzlbVarZza);
        return zzlbVar2 != null ? zzlbVar2 : zzlbVarZza;
    }

    private zzkx() {
    }

    public final <T> zzlb<T> zza(T t5) {
        return zza((Class) t5.getClass());
    }
}
