package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes2.dex */
final class zzdqg<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzhkx;
    private final /* synthetic */ zzdqe zzhky;

    private zzdqg(zzdqe zzdqeVar) {
        this.zzhky = zzdqeVar;
        this.pos = this.zzhky.zzhks.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.pos;
        return (i > 0 && i <= this.zzhky.zzhks.size()) || zzazu().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final Iterator<Map.Entry<K, V>> zzazu() {
        if (this.zzhkx == null) {
            this.zzhkx = this.zzhky.zzhkv.entrySet().iterator();
        }
        return this.zzhkx;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzazu().hasNext()) {
            return zzazu().next();
        }
        List list = this.zzhky.zzhks;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* synthetic */ zzdqg(zzdqe zzdqeVar, zzdqf zzdqfVar) {
        this(zzdqeVar);
    }
}
