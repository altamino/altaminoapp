package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class zzdta<E> extends AbstractList<E> {
    private static final zzdtc zzcp = zzdtc.zzm(zzdta.class);
    List<E> zzhtv;
    Iterator<E> zzhtw;

    public zzdta(List<E> list, Iterator<E> it) {
        this.zzhtv = list;
        this.zzhtw = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.zzhtv.size() > i) {
            return this.zzhtv.get(i);
        }
        if (this.zzhtw.hasNext()) {
            this.zzhtv.add(this.zzhtw.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new zzdtb(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        zzcp.zzhc("potentially expensive size() call");
        zzcp.zzhc("blowup running");
        while (this.zzhtw.hasNext()) {
            this.zzhtv.add(this.zzhtw.next());
        }
        return this.zzhtv.size();
    }
}
