package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzczj {
    private final E zzgme;
    private final /* synthetic */ zzczf zzgmk;

    private zzczj(zzczf zzczfVar, E e) {
        this.zzgmk = zzczfVar;
        this.zzgme = e;
    }

    public final <O> zzczl<O> zzb(zzbbh<O> zzbbhVar) {
        return new zzczl<>(this.zzgmk, this.zzgme, zzczf.zzgmh, Collections.emptyList(), zzbbhVar);
    }

    public final <O> zzczl<O> zzd(Callable<O> callable) {
        return zza(callable, this.zzgmk.zzfqw);
    }

    private final <O> zzczl<O> zza(Callable<O> callable, zzbbl zzbblVar) {
        return new zzczl<>(this.zzgmk, this.zzgme, zzczf.zzgmh, Collections.emptyList(), zzbblVar.submit(callable));
    }

    public final zzczl<?> zza(final zzczd zzczdVar, zzbbl zzbblVar) {
        return zza(new Callable(zzczdVar) { // from class: com.google.android.gms.internal.ads.zzczk
            private final zzczd zzgml;

            {
                this.zzgml = zzczdVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.zzgml.run();
                return null;
            }
        }, zzbblVar);
    }
}
