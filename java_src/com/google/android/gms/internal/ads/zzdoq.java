package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdoq<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzhit;

    public zzdoq(Iterator<Map.Entry<K, Object>> it) {
        this.zzhit = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzhit.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzhit.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzhit.next();
        return next.getValue() instanceof zzdon ? new zzdop(next) : next;
    }
}
