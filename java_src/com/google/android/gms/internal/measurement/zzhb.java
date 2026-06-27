package com.google.android.gms.internal.measurement;

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
class zzhb<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzadr;
    private final int zzakb;
    private List<zzhi> zzakc;
    private Map<K, V> zzakd;
    private volatile zzhk zzake;
    private Map<K, V> zzakf;
    private volatile zzhe zzakg;

    static <FieldDescriptorType extends zzes<FieldDescriptorType>> zzhb<FieldDescriptorType, Object> zzbe(int i) {
        return new zzhc(i);
    }

    private zzhb(int i) {
        this.zzakb = i;
        this.zzakc = Collections.emptyList();
        this.zzakd = Collections.emptyMap();
        this.zzakf = Collections.emptyMap();
    }

    public void zzjz() {
        Map<K, V> mapUnmodifiableMap;
        Map<K, V> mapUnmodifiableMap2;
        if (this.zzadr) {
            return;
        }
        if (this.zzakd.isEmpty()) {
            mapUnmodifiableMap = Collections.emptyMap();
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(this.zzakd);
        }
        this.zzakd = mapUnmodifiableMap;
        if (this.zzakf.isEmpty()) {
            mapUnmodifiableMap2 = Collections.emptyMap();
        } else {
            mapUnmodifiableMap2 = Collections.unmodifiableMap(this.zzakf);
        }
        this.zzakf = mapUnmodifiableMap2;
        this.zzadr = true;
    }

    public final boolean isImmutable() {
        return this.zzadr;
    }

    public final int zzoi() {
        return this.zzakc.size();
    }

    public final Map.Entry<K, V> zzbf(int i) {
        return this.zzakc.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zzoj() {
        if (this.zzakd.isEmpty()) {
            return zzhf.zzoo();
        }
        return this.zzakd.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzakc.size() + this.zzakd.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzhb<K, V>) comparable) >= 0 || this.zzakd.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza((zzhb<K, V>) comparable);
        if (iZza >= 0) {
            return (V) this.zzakc.get(iZza).getValue();
        }
        return this.zzakd.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V zza(K k, V v) {
        zzol();
        int iZza = zza((zzhb<K, V>) k);
        if (iZza >= 0) {
            return (V) this.zzakc.get(iZza).setValue(v);
        }
        zzol();
        if (this.zzakc.isEmpty() && !(this.zzakc instanceof ArrayList)) {
            this.zzakc = new ArrayList(this.zzakb);
        }
        int i = -(iZza + 1);
        if (i >= this.zzakb) {
            return zzom().put(k, v);
        }
        int size = this.zzakc.size();
        int i2 = this.zzakb;
        if (size == i2) {
            zzhi zzhiVarRemove = this.zzakc.remove(i2 - 1);
            zzom().put((Comparable) zzhiVarRemove.getKey(), zzhiVarRemove.getValue());
        }
        this.zzakc.add(i, new zzhi(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzol();
        if (!this.zzakc.isEmpty()) {
            this.zzakc.clear();
        }
        if (this.zzakd.isEmpty()) {
            return;
        }
        this.zzakd.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzol();
        Comparable comparable = (Comparable) obj;
        int iZza = zza((zzhb<K, V>) comparable);
        if (iZza >= 0) {
            return zzbg(iZza);
        }
        if (this.zzakd.isEmpty()) {
            return null;
        }
        return this.zzakd.remove(comparable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzbg(int i) {
        zzol();
        V v = (V) this.zzakc.remove(i).getValue();
        if (!this.zzakd.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzom().entrySet().iterator();
            this.zzakc.add(new zzhi(this, it.next()));
            it.remove();
        }
        return v;
    }

    private final int zza(K k) {
        int size = this.zzakc.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo((Comparable) this.zzakc.get(size).getKey());
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
            int iCompareTo2 = k.compareTo((Comparable) this.zzakc.get(i2).getKey());
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
        if (this.zzake == null) {
            this.zzake = new zzhk(this, null);
        }
        return this.zzake;
    }

    final Set<Map.Entry<K, V>> zzok() {
        if (this.zzakg == null) {
            this.zzakg = new zzhe(this, null);
        }
        return this.zzakg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzol() {
        if (this.zzadr) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzom() {
        zzol();
        if (this.zzakd.isEmpty() && !(this.zzakd instanceof TreeMap)) {
            this.zzakd = new TreeMap();
            this.zzakf = ((TreeMap) this.zzakd).descendingMap();
        }
        return (SortedMap) this.zzakd;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return super.equals(obj);
        }
        zzhb zzhbVar = (zzhb) obj;
        int size = size();
        if (size != zzhbVar.size()) {
            return false;
        }
        int iZzoi = zzoi();
        if (iZzoi != zzhbVar.zzoi()) {
            return entrySet().equals(zzhbVar.entrySet());
        }
        for (int i = 0; i < iZzoi; i++) {
            if (!zzbf(i).equals(zzhbVar.zzbf(i))) {
                return false;
            }
        }
        if (iZzoi != size) {
            return this.zzakd.equals(zzhbVar.zzakd);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzoi = zzoi();
        int iHashCode = 0;
        for (int i = 0; i < iZzoi; i++) {
            iHashCode += this.zzakc.get(i).hashCode();
        }
        return this.zzakd.size() > 0 ? iHashCode + this.zzakd.hashCode() : iHashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzhb<K, V>) obj, (Comparable) obj2);
    }

    /* synthetic */ zzhb(int i, zzhc zzhcVar) {
        this(i);
    }
}
