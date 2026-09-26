package com.google.android.gms.measurement.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
final class zzbe implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzbb zzb;

    zzbe(zzbb zzbbVar) {
        this.zzb = zzbbVar;
        this.zza = zzbbVar.zza.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
