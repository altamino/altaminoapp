package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzdop<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzdon> zzhis;

    private zzdop(Map.Entry<K, zzdon> entry) {
        this.zzhis = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzhis.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzhis.getValue() == null) {
            return null;
        }
        return zzdon.zzaym();
    }

    public final zzdon zzayn() {
        return this.zzhis.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof zzdpk)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        return this.zzhis.getValue().zzq((zzdpk) obj);
    }
}
