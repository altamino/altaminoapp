package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
final class zzjm<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzjj> zza;

    private zzjm(Map.Entry<K, zzjj> entry) {
        this.zza = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zza.getValue() == null) {
            return null;
        }
        return zzjj.zza();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzkj) {
            return this.zza.getValue().zza((zzkj) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzjj zza() {
        return this.zza.getValue();
    }
}
