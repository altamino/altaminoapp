package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class zzdqw extends AbstractList<String> implements zzdot, RandomAccess {
    private final zzdot zzhlh;

    public zzdqw(zzdot zzdotVar) {
        this.zzhlh = zzdotVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final zzdot zzayp() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final Object zzgq(int i) {
        return this.zzhlh.zzgq(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhlh.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final void zzdb(zzdmr zzdmrVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzdqx(this, i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzdqy(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final List<?> zzayo() {
        return this.zzhlh.zzayo();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzhlh.get(i);
    }
}
