package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes2.dex */
public final class zzcyb<T> {
    private final zzbbl zzfqw;
    private final Deque<zzbbh<T>> zzglk = new LinkedBlockingDeque();
    private final Callable<T> zzgll;

    public zzcyb(Callable<T> callable, zzbbl zzbblVar) {
        this.zzgll = callable;
        this.zzfqw = zzbblVar;
    }

    public final synchronized void zzdq(int i) {
        int size = i - this.zzglk.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.zzglk.add(this.zzfqw.zza(this.zzgll));
        }
    }

    public final synchronized zzbbh<T> zzamr() {
        zzdq(1);
        return this.zzglk.poll();
    }

    public final synchronized void zza(zzbbh<T> zzbbhVar) {
        this.zzglk.addFirst(zzbbhVar);
    }
}
