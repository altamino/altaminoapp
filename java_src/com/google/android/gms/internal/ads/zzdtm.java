package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public final class zzdtm<K, V> {
    private final LinkedHashMap<K, zzdtu<V>> zzhum;

    private zzdtm(int i) {
        this.zzhum = zzdtf.zzhm(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzdtm<K, V> zza(K k, zzdtu<V> zzdtuVar) {
        this.zzhum.put(zzdto.zza(k, "key"), (zzdtu) zzdto.zza(zzdtuVar, "provider"));
        return this;
    }

    public final zzdtk<K, V> zzbbf() {
        return new zzdtk<>(this.zzhum);
    }
}
