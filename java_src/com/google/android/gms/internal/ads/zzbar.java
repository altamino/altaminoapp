package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

@zzard
/* loaded from: classes2.dex */
public final class zzbar {
    public static <V> void zza(final zzbbh<V> zzbbhVar, final zzban<? super V> zzbanVar, Executor executor) {
        zzbbhVar.zza(new Runnable(zzbanVar, zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzbas
            private final zzban zzdzh;
            private final zzbbh zzdzi;

            {
                this.zzdzh = zzbanVar;
                this.zzdzi = zzbbhVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzban zzbanVar2 = this.zzdzh;
                try {
                    zzbanVar2.zzk(this.zzdzi.get());
                } catch (InterruptedException e) {
                    e = e;
                    Thread.currentThread().interrupt();
                    zzbanVar2.zzb(e);
                } catch (ExecutionException e2) {
                    e = e2.getCause();
                    zzbanVar2.zzb(e);
                } catch (Exception e3) {
                    e = e3;
                    zzbanVar2.zzb(e);
                }
            }
        }, executor);
    }

    public static <A, B> zzbbh<B> zza(final zzbbh<A> zzbbhVar, final zzbam<A, B> zzbamVar, Executor executor) {
        final zzbbr zzbbrVar = new zzbbr();
        zzbbhVar.zza(new Runnable(zzbbrVar, zzbamVar, zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzbat
            private final zzbbr zzbxh;
            private final zzbam zzdzj;
            private final zzbbh zzdzk;

            {
                this.zzbxh = zzbbrVar;
                this.zzdzj = zzbamVar;
                this.zzdzk = zzbbhVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbr zzbbrVar2 = this.zzbxh;
                try {
                    zzbbrVar2.set(this.zzdzj.apply(this.zzdzk.get()));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    zzbbrVar2.setException(e);
                } catch (CancellationException unused) {
                    zzbbrVar2.cancel(true);
                } catch (ExecutionException e2) {
                    e = e2;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    zzbbrVar2.setException(e);
                } catch (Exception e3) {
                    zzbbrVar2.setException(e3);
                }
            }
        }, executor);
        zza(zzbbrVar, zzbbhVar);
        return zzbbrVar;
    }

    public static <A, B> zzbbh<B> zza(final zzbbh<A> zzbbhVar, final zzbal<? super A, ? extends B> zzbalVar, Executor executor) {
        final zzbbr zzbbrVar = new zzbbr();
        zzbbhVar.zza(new Runnable(zzbbrVar, zzbalVar, zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzbau
            private final zzbbr zzbxh;
            private final zzbbh zzdzk;
            private final zzbal zzdzl;

            {
                this.zzbxh = zzbbrVar;
                this.zzdzl = zzbalVar;
                this.zzdzk = zzbbhVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbar.zza(this.zzbxh, this.zzdzl, this.zzdzk);
            }
        }, executor);
        zza(zzbbrVar, zzbbhVar);
        return zzbbrVar;
    }

    public static <V> zzbbh<List<V>> zze(final Iterable<? extends zzbbh<? extends V>> iterable) {
        final zzbbr zzbbrVar = new zzbbr();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (zzbbh<? extends V> zzbbhVar : iterable) {
            atomicInteger.incrementAndGet();
            zza(zzbbrVar, zzbbhVar);
        }
        final Runnable runnable = new Runnable(iterable, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzbav
            private final Iterable zzdzm;
            private final zzbbr zzdzn;

            {
                this.zzdzm = iterable;
                this.zzdzn = zzbbrVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Iterable iterable2 = this.zzdzm;
                zzbbr zzbbrVar2 = this.zzdzn;
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable2.iterator();
                while (it.hasNext()) {
                    try {
                        arrayList.add(((zzbbh) it.next()).get());
                    } catch (InterruptedException e) {
                        e = e;
                        zzbbrVar2.setException(e);
                    } catch (ExecutionException e2) {
                        zzbbrVar2.setException(e2.getCause());
                    } catch (Exception e3) {
                        e = e3;
                        zzbbrVar2.setException(e);
                    }
                }
                zzbbrVar2.set(arrayList);
            }
        };
        for (final zzbbh<? extends V> zzbbhVar2 : iterable) {
            zzbbhVar2.zza(new Runnable(zzbbhVar2, atomicInteger, runnable, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzbaw
                private final zzbbr zzbxg;
                private final zzbbh zzdzo;
                private final AtomicInteger zzdzp;
                private final Runnable zzdzq;

                {
                    this.zzdzo = zzbbhVar2;
                    this.zzdzp = atomicInteger;
                    this.zzdzq = runnable;
                    this.zzbxg = zzbbrVar;
                }

                @Override // java.lang.Runnable
                public final void run() throws ExecutionException, InterruptedException {
                    zzbbh zzbbhVar3 = this.zzdzo;
                    AtomicInteger atomicInteger2 = this.zzdzp;
                    Runnable runnable2 = this.zzdzq;
                    zzbbr zzbbrVar2 = this.zzbxg;
                    try {
                        zzbbhVar3.get();
                        if (atomicInteger2.decrementAndGet() == 0) {
                            runnable2.run();
                        }
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        zzbbrVar2.setException(e);
                    } catch (ExecutionException e2) {
                        zzbbrVar2.setException(e2.getCause());
                    } catch (Exception e3) {
                        zzbbrVar2.setException(e3);
                    }
                }
            }, zzbbm.zzeaf);
        }
        return zzbbrVar;
    }

    public static <V> zzbbh<V> zza(zzbbh<V> zzbbhVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        final zzbbr zzbbrVar = new zzbbr();
        zza(zzbbrVar, zzbbhVar);
        final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable(zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzbax
            private final zzbbr zzbxh;

            {
                this.zzbxh = zzbbrVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzbxh.setException(new TimeoutException());
            }
        }, j, timeUnit);
        zza((zzbbh) zzbbhVar, zzbbrVar);
        zzbbrVar.zza(new Runnable(scheduledFutureSchedule) { // from class: com.google.android.gms.internal.ads.zzbay
            private final Future zzdzr;

            {
                this.zzdzr = scheduledFutureSchedule;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Future future = this.zzdzr;
                if (future.isDone()) {
                    return;
                }
                future.cancel(true);
            }
        }, zzbbm.zzeaf);
        return zzbbrVar;
    }

    public static <V, X extends Throwable> zzbbh<V> zza(final zzbbh<? extends V> zzbbhVar, final Class<X> cls, final zzbal<? super X, ? extends V> zzbalVar, final Executor executor) {
        final zzbbr zzbbrVar = new zzbbr();
        zza(zzbbrVar, zzbbhVar);
        zzbbhVar.zza(new Runnable(zzbbrVar, zzbbhVar, cls, zzbalVar, executor) { // from class: com.google.android.gms.internal.ads.zzbaz
            private final zzbbr zzbxh;
            private final zzbbh zzdzi;
            private final Class zzdzs;
            private final zzbal zzdzt;
            private final Executor zzdzu;

            {
                this.zzbxh = zzbbrVar;
                this.zzdzi = zzbbhVar;
                this.zzdzs = cls;
                this.zzdzt = zzbalVar;
                this.zzdzu = executor;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbar.zza(this.zzbxh, this.zzdzi, this.zzdzs, this.zzdzt, this.zzdzu);
            }
        }, zzbbm.zzeaf);
        return zzbbrVar;
    }

    public static <V> zzbbc<V> zza(zzbbh<? extends V>... zzbbhVarArr) {
        return zzf(Arrays.asList(zzbbhVarArr));
    }

    public static <V> zzbbc<V> zzf(Iterable<? extends zzbbh<? extends V>> iterable) {
        return new zzbbc<>(iterable);
    }

    public static <T> zzbbg<T> zzm(T t) {
        return new zzbbg<>(t);
    }

    public static <T> zzbbf<T> zzd(Throwable th) {
        return new zzbbf<>(th);
    }

    private static <V> void zza(final zzbbh<? extends V> zzbbhVar, final zzbbr<V> zzbbrVar) {
        zza(zzbbrVar, zzbbhVar);
        zzbbhVar.zza(new Runnable(zzbbrVar, zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzbba
            private final zzbbr zzbxh;
            private final zzbbh zzdzi;

            {
                this.zzbxh = zzbbrVar;
                this.zzdzi = zzbbhVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbr zzbbrVar2 = this.zzbxh;
                try {
                    zzbbrVar2.set(this.zzdzi.get());
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    zzbbrVar2.setException(e);
                } catch (ExecutionException e2) {
                    zzbbrVar2.setException(e2.getCause());
                } catch (Exception e3) {
                    zzbbrVar2.setException(e3);
                }
            }
        }, zzbbm.zzeaf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <A, B> void zza(final zzbbh<A> zzbbhVar, final Future<B> future) {
        zzbbhVar.zza(new Runnable(zzbbhVar, future) { // from class: com.google.android.gms.internal.ads.zzbbb
            private final Future zzbxi;
            private final zzbbh zzdzo;

            {
                this.zzdzo = zzbbhVar;
                this.zzbxi = future;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbh zzbbhVar2 = this.zzdzo;
                Future future2 = this.zzbxi;
                if (zzbbhVar2.isCancelled()) {
                    future2.cancel(true);
                }
            }
        }, zzbbm.zzeaf);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final /* synthetic */ void zza(com.google.android.gms.internal.ads.zzbbr r1, com.google.android.gms.internal.ads.zzbbh r2, java.lang.Class r3, com.google.android.gms.internal.ads.zzbal r4, java.util.concurrent.Executor r5) {
        /*
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Exception -> L8 java.lang.InterruptedException -> La java.util.concurrent.ExecutionException -> L13
            r1.set(r2)     // Catch: java.lang.Exception -> L8 java.lang.InterruptedException -> La java.util.concurrent.ExecutionException -> L13
            return
        L8:
            r2 = move-exception
            goto L18
        La:
            r2 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L18
        L13:
            r2 = move-exception
            java.lang.Throwable r2 = r2.getCause()
        L18:
            boolean r3 = r3.isInstance(r2)
            if (r3 == 0) goto L2a
            com.google.android.gms.internal.ads.zzbbg r2 = zzm(r2)
            com.google.android.gms.internal.ads.zzbbh r2 = zza(r2, r4, r5)
            zza(r2, r1)
            return
        L2a:
            r1.setException(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbar.zza(com.google.android.gms.internal.ads.zzbbr, com.google.android.gms.internal.ads.zzbbh, java.lang.Class, com.google.android.gms.internal.ads.zzbal, java.util.concurrent.Executor):void");
    }

    static final /* synthetic */ void zza(zzbbr zzbbrVar, zzbal zzbalVar, zzbbh zzbbhVar) {
        if (zzbbrVar.isCancelled()) {
            return;
        }
        try {
            zza(zzbalVar.zzf(zzbbhVar.get()), zzbbrVar);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            zzbbrVar.setException(e);
        } catch (CancellationException unused) {
            zzbbrVar.cancel(true);
        } catch (ExecutionException e2) {
            zzbbrVar.setException(e2.getCause());
        } catch (Exception e3) {
            zzbbrVar.setException(e3);
        }
    }
}
