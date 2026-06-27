package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class zzgv<E> extends zzdj<E> {
    private static final zzgv<Object> zzajw;
    private final List<E> zzaij;

    public static <E> zzgv<E> zzoa() {
        return (zzgv<E>) zzajw;
    }

    zzgv() {
        this(new ArrayList(10));
    }

    private zzgv(List<E> list) {
        this.zzaij = list;
    }

    @Override // com.google.android.gms.internal.measurement.zzdj, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzka();
        this.zzaij.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzaij.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzka();
        E eRemove = this.zzaij.remove(i);
        ((AbstractList) this).modCount++;
        return eRemove;
    }

    @Override // com.google.android.gms.internal.measurement.zzdj, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzka();
        E e2 = this.zzaij.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzaij.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final /* synthetic */ zzfg zzq(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzaij);
        return new zzgv(arrayList);
    }

    static {
        zzgv<Object> zzgvVar = new zzgv<>(new ArrayList(0));
        zzajw = zzgvVar;
        zzgvVar.zzjz();
    }
}
