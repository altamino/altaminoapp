package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzdqy implements Iterator<String> {
    private final /* synthetic */ zzdqw zzhlk;
    private Iterator<String> zzhll;

    zzdqy(zzdqw zzdqwVar) {
        this.zzhlk = zzdqwVar;
        this.zzhll = this.zzhlk.zzhlh.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzhll.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzhll.next();
    }
}
