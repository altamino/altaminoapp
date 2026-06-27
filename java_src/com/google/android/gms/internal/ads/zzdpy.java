package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class zzdpy<E> extends zzdml<E> {
    private static final zzdpy<Object> zzhkm;
    private final List<E> zzhiz;

    public static <E> zzdpy<E> zzazh() {
        return (zzdpy<E>) zzhkm;
    }

    zzdpy() {
        this(new ArrayList(10));
    }

    private zzdpy(List<E> list) {
        this.zzhiz = list;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzavk();
        this.zzhiz.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzhiz.get(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzavk();
        E eRemove = this.zzhiz.remove(i);
        ((AbstractList) this).modCount++;
        return eRemove;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzavk();
        E e2 = this.zzhiz.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhiz.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    public final /* synthetic */ zzdoj zzfl(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzhiz);
        return new zzdpy(arrayList);
    }

    static {
        zzdpy<Object> zzdpyVar = new zzdpy<>(new ArrayList(0));
        zzhkm = zzdpyVar;
        zzdpyVar.zzavj();
    }
}
