package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
final class zzmd implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzmb zzb;

    zzmd(zzmb zzmbVar) {
        this.zzb = zzmbVar;
        this.zza = zzmbVar.zza.iterator();
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
        throw new UnsupportedOperationException();
    }
}
