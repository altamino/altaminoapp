package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
final class zzgu {
    private static final zzgu zzajt = new zzgu();
    private final ConcurrentMap<Class<?>, zzgy<?>> zzajv = new ConcurrentHashMap();
    private final zzgz zzaju = new zzfw();

    public static zzgu zznz() {
        return zzajt;
    }

    public final <T> zzgy<T> zzf(Class<T> cls) {
        zzfb.zza(cls, "messageType");
        zzgy<T> zzgyVar = (zzgy) this.zzajv.get(cls);
        if (zzgyVar != null) {
            return zzgyVar;
        }
        zzgy<T> zzgyVarZze = this.zzaju.zze(cls);
        zzfb.zza(cls, "messageType");
        zzfb.zza(zzgyVarZze, "schema");
        zzgy<T> zzgyVar2 = (zzgy) this.zzajv.putIfAbsent(cls, zzgyVarZze);
        return zzgyVar2 != null ? zzgyVar2 : zzgyVarZze;
    }

    public final <T> zzgy<T> zzv(T t) {
        return zzf(t.getClass());
    }

    private zzgu() {
    }
}
