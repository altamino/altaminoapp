package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzdq extends zzds {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzdp zzacc;

    zzdq(zzdp zzdpVar) {
        this.zzacc = zzdpVar;
        this.limit = this.zzacc.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzdw
    public final byte nextByte() {
        int i = this.position;
        if (i >= this.limit) {
            throw new NoSuchElementException();
        }
        this.position = i + 1;
        return this.zzacc.zzs(i);
    }
}
