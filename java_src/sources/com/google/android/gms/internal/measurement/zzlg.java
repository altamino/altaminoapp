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

/* JADX INFO: loaded from: classes7.dex */
class zzlg<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int zza;
    private List<zzln> zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzls zze;
    private Map<K, V> zzf;
    private volatile zzlk zzg;

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlg)) {
            return super.equals(obj);
        }
        zzlg zzlgVar = (zzlg) obj;
        int size = size();
        if (size != zzlgVar.size()) {
            return false;
        }
        int iZzb = zzb();
        if (iZzb != zzlgVar.zzb()) {
            return entrySet().equals(zzlgVar.entrySet());
        }
        for (int i10 = 0; i10 < iZzb; i10++) {
            if (!zzb(i10).equals(zzlgVar.zzb(i10))) {
                return false;
            }
        }
        if (iZzb != size) {
            return this.zzc.equals(zzlgVar.zzc);
        }
        return true;
    }

    public final boolean zze() {
        return this.zzd;
    }

    private zzlg(int i10) {
        this.zza = i10;
        this.zzb = Collections.emptyList();
        this.zzc = Collections.emptyMap();
        this.zzf = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        if (this.zzd) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzls(this);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        return iZza >= 0 ? (V) this.zzb.get(iZza).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzb.size() + this.zzc.size();
    }

    public final int zzb() {
        return this.zzb.size();
    }

    public final Iterable<Map.Entry<K, V>> zzc() {
        return this.zzc.isEmpty() ? zzlm.zza() : this.zzc.entrySet();
    }

    final Set<Map.Entry<K, V>> zzd() {
        if (this.zzg == null) {
            this.zzg = new zzlk(this);
        }
        return this.zzg;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    /* JADX WARN: Code duplicated, block: B:17:0x0045  */
    /* JADX WARN: Code duplicated, block: B:21:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0040 A[SYNTHETIC] */
    private final int zza(K k) {
        int i10;
        int i11;
        int i12;
        int iCompareTo;
        int size = this.zzb.size();
        int i13 = size - 1;
        if (i13 < 0) {
            i10 = 0;
            while (i10 <= i13) {
                i12 = (i10 + i13) / 2;
                iCompareTo = k.compareTo((Comparable) this.zzb.get(i12).getKey());
                if (iCompareTo < 0) {
                    i13 = i12 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i12;
                    }
                    i10 = i12 + 1;
                }
            }
            i11 = i10 + 1;
        } else {
            int iCompareTo2 = k.compareTo((Comparable) this.zzb.get(i13).getKey());
            if (iCompareTo2 > 0) {
                i11 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i13;
                }
                i10 = 0;
                while (i10 <= i13) {
                    i12 = (i10 + i13) / 2;
                    iCompareTo = k.compareTo((Comparable) this.zzb.get(i12).getKey());
                    if (iCompareTo < 0) {
                        i13 = i12 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i12;
                        }
                        i10 = i12 + 1;
                    }
                }
                i11 = i10 + 1;
            }
        }
        return -i11;
    }

    private final SortedMap<K, V> zzf() {
        zzg();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzg();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (!this.zzc.isEmpty()) {
            this.zzc.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzb = zzb();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iZzb; i10++) {
            iHashCode += this.zzb.get(i10).hashCode();
        }
        if (this.zzc.size() > 0) {
            return iHashCode + this.zzc.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzg();
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return zzc(iZza);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    public final Map.Entry<K, V> zzb(int i10) {
        return this.zzb.get(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzc(int i10) {
        zzg();
        V v5 = (V) this.zzb.remove(i10).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzf().entrySet().iterator();
            this.zzb.add(new zzln(this, it.next()));
            it.remove();
        }
        return v5;
    }

    static <FieldDescriptorType extends zzis<FieldDescriptorType>> zzlg<FieldDescriptorType, Object> zza(int i10) {
        return new zzlf(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final V put(K k, V v5) {
        zzg();
        int iZza = zza(k);
        if (iZza >= 0) {
            return (V) this.zzb.get(iZza).setValue(v5);
        }
        zzg();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i10 = -(iZza + 1);
        if (i10 >= this.zza) {
            return zzf().put(k, v5);
        }
        int size = this.zzb.size();
        int i11 = this.zza;
        if (size == i11) {
            zzln zzlnVarRemove = this.zzb.remove(i11 - 1);
            zzf().put((Comparable) zzlnVarRemove.getKey(), zzlnVarRemove.getValue());
        }
        this.zzb.add(i10, new zzln(this, k, v5));
        return null;
    }

    public void zza() {
        Map<K, V> mapUnmodifiableMap;
        Map<K, V> mapUnmodifiableMap2;
        if (this.zzd) {
            return;
        }
        if (this.zzc.isEmpty()) {
            mapUnmodifiableMap = Collections.emptyMap();
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(this.zzc);
        }
        this.zzc = mapUnmodifiableMap;
        if (this.zzf.isEmpty()) {
            mapUnmodifiableMap2 = Collections.emptyMap();
        } else {
            mapUnmodifiableMap2 = Collections.unmodifiableMap(this.zzf);
        }
        this.zzf = mapUnmodifiableMap2;
        this.zzd = true;
    }
}
