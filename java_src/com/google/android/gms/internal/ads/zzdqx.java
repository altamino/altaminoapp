package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* loaded from: classes2.dex */
final class zzdqx implements ListIterator<String> {
    private ListIterator<String> zzhli;
    private final /* synthetic */ int zzhlj;
    private final /* synthetic */ zzdqw zzhlk;

    zzdqx(zzdqw zzdqwVar, int i) {
        this.zzhlk = zzdqwVar;
        this.zzhlj = i;
        this.zzhli = this.zzhlk.zzhlh.listIterator(this.zzhlj);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzhli.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzhli.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzhli.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzhli.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzhli.previous();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzhli.next();
    }
}
