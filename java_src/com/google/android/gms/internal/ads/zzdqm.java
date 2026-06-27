package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes2.dex */
final class zzdqm<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzhkx;
    private final /* synthetic */ zzdqe zzhky;
    private boolean zzhlc;

    private zzdqm(zzdqe zzdqeVar) {
        this.zzhky = zzdqeVar;
        this.pos = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos + 1 < this.zzhky.zzhks.size() || (!this.zzhky.zzhkt.isEmpty() && zzazu().hasNext());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzhlc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzhlc = false;
        this.zzhky.zzazs();
        if (this.pos < this.zzhky.zzhks.size()) {
            zzdqe zzdqeVar = this.zzhky;
            int i = this.pos;
            this.pos = i - 1;
            zzdqeVar.zzha(i);
            return;
        }
        zzazu().remove();
    }

    private final Iterator<Map.Entry<K, V>> zzazu() {
        if (this.zzhkx == null) {
            this.zzhkx = this.zzhky.zzhkt.entrySet().iterator();
        }
        return this.zzhkx;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzhlc = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i >= this.zzhky.zzhks.size()) {
            return zzazu().next();
        }
        return (Map.Entry) this.zzhky.zzhks.get(this.pos);
    }

    /* synthetic */ zzdqm(zzdqe zzdqeVar, zzdqf zzdqfVar) {
        this(zzdqeVar);
    }
}
