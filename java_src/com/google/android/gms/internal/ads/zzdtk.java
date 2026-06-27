package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdtk<K, V> implements zzdti<Map<K, V>> {
    private static final zzdtu<Map<Object, Object>> zzhuk = zzdtj.zzar(Collections.emptyMap());
    private final Map<K, zzdtu<V>> zzhul;

    public static <K, V> zzdtm<K, V> zzho(int i) {
        return new zzdtm<>(i);
    }

    private zzdtk(Map<K, zzdtu<V>> map) {
        this.zzhul = Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        LinkedHashMap linkedHashMapZzhm = zzdtf.zzhm(this.zzhul.size());
        for (Map.Entry<K, zzdtu<V>> entry : this.zzhul.entrySet()) {
            linkedHashMapZzhm.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMapZzhm);
    }
}
