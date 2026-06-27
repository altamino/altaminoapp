package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzhv implements Iterator<String> {
    private final /* synthetic */ zzht zzaku;
    private Iterator<String> zzakv;

    zzhv(zzht zzhtVar) {
        this.zzaku = zzhtVar;
        this.zzakv = this.zzaku.zzakr.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzakv.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzakv.next();
    }
}
