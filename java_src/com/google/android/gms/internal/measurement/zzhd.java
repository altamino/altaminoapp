package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes2.dex */
final class zzhd<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzakh;
    private final /* synthetic */ zzhb zzaki;

    private zzhd(zzhb zzhbVar) {
        this.zzaki = zzhbVar;
        this.pos = this.zzaki.zzakc.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.pos;
        return (i > 0 && i <= this.zzaki.zzakc.size()) || zzon().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final Iterator<Map.Entry<K, V>> zzon() {
        if (this.zzakh == null) {
            this.zzakh = this.zzaki.zzakf.entrySet().iterator();
        }
        return this.zzakh;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzon().hasNext()) {
            return zzon().next();
        }
        List list = this.zzaki.zzakc;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* synthetic */ zzhd(zzhb zzhbVar, zzhc zzhcVar) {
        this(zzhbVar);
    }
}
