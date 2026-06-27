package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes2.dex */
final class zzdtb<E> implements Iterator<E> {
    private int pos = 0;
    private final /* synthetic */ zzdta zzhtx;

    zzdtb(zzdta zzdtaVar) {
        this.zzhtx = zzdtaVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos < this.zzhtx.zzhtv.size() || this.zzhtx.zzhtw.hasNext();
    }

    @Override // java.util.Iterator
    public final E next() {
        while (this.pos >= this.zzhtx.zzhtv.size()) {
            zzdta zzdtaVar = this.zzhtx;
            zzdtaVar.zzhtv.add(zzdtaVar.zzhtw.next());
        }
        List<E> list = this.zzhtx.zzhtv;
        int i = this.pos;
        this.pos = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
