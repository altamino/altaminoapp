package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
final class zzdpx {
    private static final zzdpx zzhkj = new zzdpx();
    private final ConcurrentMap<Class<?>, zzdqb<?>> zzhkl = new ConcurrentHashMap();
    private final zzdqc zzhkk = new zzdoz();

    public static zzdpx zzazg() {
        return zzhkj;
    }

    public final <T> zzdqb<T> zzg(Class<T> cls) {
        zzdod.zza(cls, "messageType");
        zzdqb<T> zzdqbVar = (zzdqb) this.zzhkl.get(cls);
        if (zzdqbVar != null) {
            return zzdqbVar;
        }
        zzdqb<T> zzdqbVarZzf = this.zzhkk.zzf(cls);
        zzdod.zza(cls, "messageType");
        zzdod.zza(zzdqbVarZzf, "schema");
        zzdqb<T> zzdqbVar2 = (zzdqb) this.zzhkl.putIfAbsent(cls, zzdqbVarZzf);
        return zzdqbVar2 != null ? zzdqbVar2 : zzdqbVarZzf;
    }

    public final <T> zzdqb<T> zzan(T t) {
        return zzg(t.getClass());
    }

    private zzdpx() {
    }
}
