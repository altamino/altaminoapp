package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzfn<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzaid;

    public zzfn(Iterator<Map.Entry<K, Object>> it) {
        this.zzaid = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzaid.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzaid.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzaid.next();
        return next.getValue() instanceof zzfk ? new zzfm(next) : next;
    }
}
