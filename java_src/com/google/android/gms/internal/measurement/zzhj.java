package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes2.dex */
final class zzhj<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzakh;
    private final /* synthetic */ zzhb zzaki;
    private boolean zzakm;

    private zzhj(zzhb zzhbVar) {
        this.zzaki = zzhbVar;
        this.pos = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos + 1 < this.zzaki.zzakc.size() || (!this.zzaki.zzakd.isEmpty() && zzon().hasNext());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzakm) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzakm = false;
        this.zzaki.zzol();
        if (this.pos < this.zzaki.zzakc.size()) {
            zzhb zzhbVar = this.zzaki;
            int i = this.pos;
            this.pos = i - 1;
            zzhbVar.zzbg(i);
            return;
        }
        zzon().remove();
    }

    private final Iterator<Map.Entry<K, V>> zzon() {
        if (this.zzakh == null) {
            this.zzakh = this.zzaki.zzakd.entrySet().iterator();
        }
        return this.zzakh;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzakm = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i >= this.zzaki.zzakc.size()) {
            return zzon().next();
        }
        return (Map.Entry) this.zzaki.zzakc.get(this.pos);
    }

    /* synthetic */ zzhj(zzhb zzhbVar, zzhc zzhcVar) {
        this(zzhbVar);
    }
}
