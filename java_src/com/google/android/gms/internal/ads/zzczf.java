package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public abstract class zzczf<E> {
    private static final zzbbh<?> zzgmh = zzbar.zzm(null);
    private final ScheduledExecutorService zzfkf;
    private final zzbbl zzfqw;
    private final zzczr<E> zzgmi;

    public zzczf(zzbbl zzbblVar, ScheduledExecutorService scheduledExecutorService, zzczr<E> zzczrVar) {
        this.zzfqw = zzbblVar;
        this.zzfkf = scheduledExecutorService;
        this.zzgmi = zzczrVar;
    }

    protected abstract String zzw(E e);

    public final zzczj zzv(E e) {
        return new zzczj(this, e);
    }

    public final <I> zzczl<I> zza(E e, zzbbh<I> zzbbhVar) {
        return new zzczl<>(this, e, zzbbhVar, Collections.singletonList(zzbbhVar), zzbbhVar);
    }

    public final zzczh zza(E e, zzbbh<?>... zzbbhVarArr) {
        return new zzczh(this, e, Arrays.asList(zzbbhVarArr));
    }
}
