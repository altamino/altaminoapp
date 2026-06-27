package com.google.android.gms.internal.ads;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes2.dex */
class zzdqe<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzheh;
    private final int zzhkr;
    private List<zzdql> zzhks;
    private Map<K, V> zzhkt;
    private volatile zzdqn zzhku;
    private Map<K, V> zzhkv;
    private volatile zzdqh zzhkw;

    static <FieldDescriptorType extends zzdnu<FieldDescriptorType>> zzdqe<FieldDescriptorType, Object> zzgy(int i) {
        return new zzdqf(i);
    }

    private zzdqe(int i) {
        this.zzhkr = i;
        this.zzhks = Collections.emptyList();
        this.zzhkt = Collections.emptyMap();
        this.zzhkv = Collections.emptyMap();
    }

    public void zzavj() {
        Map<K, V> mapUnmodifiableMap;
        Map<K, V> mapUnmodifiableMap2;
        if (this.zzheh) {
            return;
        }
        if (this.zzhkt.isEmpty()) {
            mapUnmodifiableMap = Collections.emptyMap();
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(this.zzhkt);
        }
        this.zzhkt = mapUnmodifiableMap;
        if (this.zzhkv.isEmpty()) {
            mapUnmodifiableMap2 = Collections.emptyMap();
        } else {
            mapUnmodifiableMap2 = Collections.unmodifiableMap(this.zzhkv);
        }
        this.zzhkv = mapUnmodifiableMap2;
        this.zzheh = true;
    }

    public final boolean isImmutable() {
        return this.zzheh;
    }

    public final int zzazp() {
        return this.zzhks.size();
    }

    public final Map.Entry<K, V> zzgz(int i) {
        return this.zzhks.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zzazq() {
        if (this.zzhkt.isEmpty()) {
            return zzdqi.zzazv();
        }
        return this.zzhkt.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzhks.size() + this.zzhkt.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzdqe<K, V>) comparable) >= 0 || this.zzhkt.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza((zzdqe<K, V>) comparable);
        if (iZza >= 0) {
            return (V) this.zzhks.get(iZza).getValue();
        }
        return this.zzhkt.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V zza(K k, V v) {
        zzazs();
        int iZza = zza((zzdqe<K, V>) k);
        if (iZza >= 0) {
            return (V) this.zzhks.get(iZza).setValue(v);
        }
        zzazs();
        if (this.zzhks.isEmpty() && !(this.zzhks instanceof ArrayList)) {
            this.zzhks = new ArrayList(this.zzhkr);
        }
        int i = -(iZza + 1);
        if (i >= this.zzhkr) {
            return zzazt().put(k, v);
        }
        int size = this.zzhks.size();
        int i2 = this.zzhkr;
        if (size == i2) {
            zzdql zzdqlVarRemove = this.zzhks.remove(i2 - 1);
            zzazt().put((Comparable) zzdqlVarRemove.getKey(), zzdqlVarRemove.getValue());
        }
        this.zzhks.add(i, new zzdql(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzazs();
        if (!this.zzhks.isEmpty()) {
            this.zzhks.clear();
        }
        if (this.zzhkt.isEmpty()) {
            return;
        }
        this.zzhkt.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzazs();
        Comparable comparable = (Comparable) obj;
        int iZza = zza((zzdqe<K, V>) comparable);
        if (iZza >= 0) {
            return zzha(iZza);
        }
        if (this.zzhkt.isEmpty()) {
            return null;
        }
        return this.zzhkt.remove(comparable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzha(int i) {
        zzazs();
        V v = (V) this.zzhks.remove(i).getValue();
        if (!this.zzhkt.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzazt().entrySet().iterator();
            this.zzhks.add(new zzdql(this, it.next()));
            it.remove();
        }
        return v;
    }

    private final int zza(K k) {
        int size = this.zzhks.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo((Comparable) this.zzhks.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k.compareTo((Comparable) this.zzhks.get(i2).getKey());
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzhku == null) {
            this.zzhku = new zzdqn(this, null);
        }
        return this.zzhku;
    }

    final Set<Map.Entry<K, V>> zzazr() {
        if (this.zzhkw == null) {
            this.zzhkw = new zzdqh(this, null);
        }
        return this.zzhkw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzazs() {
        if (this.zzheh) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzazt() {
        zzazs();
        if (this.zzhkt.isEmpty() && !(this.zzhkt instanceof TreeMap)) {
            this.zzhkt = new TreeMap();
            this.zzhkv = ((TreeMap) this.zzhkt).descendingMap();
        }
        return (SortedMap) this.zzhkt;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdqe)) {
            return super.equals(obj);
        }
        zzdqe zzdqeVar = (zzdqe) obj;
        int size = size();
        if (size != zzdqeVar.size()) {
            return false;
        }
        int iZzazp = zzazp();
        if (iZzazp != zzdqeVar.zzazp()) {
            return entrySet().equals(zzdqeVar.entrySet());
        }
        for (int i = 0; i < iZzazp; i++) {
            if (!zzgz(i).equals(zzdqeVar.zzgz(i))) {
                return false;
            }
        }
        if (iZzazp != size) {
            return this.zzhkt.equals(zzdqeVar.zzhkt);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzazp = zzazp();
        int iHashCode = 0;
        for (int i = 0; i < iZzazp; i++) {
            iHashCode += this.zzhks.get(i).hashCode();
        }
        return this.zzhkt.size() > 0 ? iHashCode + this.zzhkt.hashCode() : iHashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzdqe<K, V>) obj, (Comparable) obj2);
    }

    /* synthetic */ zzdqe(int i, zzdqf zzdqfVar) {
        this(i);
    }
}
