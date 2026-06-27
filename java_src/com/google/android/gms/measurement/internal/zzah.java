package com.google.android.gms.measurement.internal;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzah implements Iterator<String> {
    private Iterator<String> zzfn;
    private final /* synthetic */ zzag zzfo;

    zzah(zzag zzagVar) {
        this.zzfo = zzagVar;
        this.zzfn = this.zzfo.zzfm.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzfn.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzfn.next();
    }
}
