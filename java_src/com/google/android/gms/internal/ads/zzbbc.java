package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzbbc<V> {
    private final zzbbr<Void> zzdzv = new zzbbr<>();

    zzbbc(Iterable<? extends zzbbh<? extends V>> iterable) {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (zzbbh<? extends V> zzbbhVar : iterable) {
            atomicInteger.incrementAndGet();
            zzbar.zza(this.zzdzv, zzbbhVar);
        }
        if (atomicInteger.get() == 0) {
            this.zzdzv.set(null);
            return;
        }
        Iterator<? extends zzbbh<? extends V>> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().zza(new Runnable(this, atomicInteger) { // from class: com.google.android.gms.internal.ads.zzbbd
                private final AtomicInteger zzdzp;
                private final zzbbc zzdzw;

                {
                    this.zzdzw = this;
                    this.zzdzp = atomicInteger;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdzw.zza(this.zzdzp);
                }
            }, zzbbm.zzeaf);
        }
    }

    public final <C> zzbbh<C> zza(final Callable<C> callable, Executor executor) {
        return zzbar.zza(this.zzdzv, new zzbal(callable) { // from class: com.google.android.gms.internal.ads.zzbbe
            private final Callable zzdzx;

            {
                this.zzdzx = callable;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return zzbar.zzm(this.zzdzx.call());
            }
        }, executor);
    }

    final /* synthetic */ void zza(AtomicInteger atomicInteger) {
        if (atomicInteger.decrementAndGet() == 0) {
            this.zzdzv.set(null);
        }
    }
}
