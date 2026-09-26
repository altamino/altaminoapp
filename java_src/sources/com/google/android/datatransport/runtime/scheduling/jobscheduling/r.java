package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public class r {
    private static final String CLIENT_HEALTH_METRICS_LOG_SOURCE = "GDT_CLIENT_METRICS";
    private static final String LOG_TAG = "Uploader";
    private final g2.e backendRegistry;
    private final com.google.android.datatransport.runtime.scheduling.persistence.c clientHealthMetricsStore;
    private final m2.a clock;
    private final Context context;
    private final com.google.android.datatransport.runtime.scheduling.persistence.d eventStore;
    private final Executor executor;
    private final l2.b guard;
    private final m2.a uptimeClock;
    private final x workScheduler;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(com.google.android.datatransport.runtime.p pVar) {
        return Boolean.valueOf(this.eventStore.m0(pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(com.google.android.datatransport.runtime.p pVar) {
        return this.eventStore.r0(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, com.google.android.datatransport.runtime.p pVar, long j6) {
        this.eventStore.n0(iterable);
        this.eventStore.y(pVar, this.clock.a() + j6);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.eventStore.V(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.clientHealthMetricsStore.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(com.google.android.datatransport.runtime.p pVar, long j6) {
        this.eventStore.y(pVar, this.clock.a() + j6);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(com.google.android.datatransport.runtime.p pVar, int i10) {
        this.workScheduler.b(pVar, i10 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final com.google.android.datatransport.runtime.p pVar, final int i10, Runnable runnable) {
        try {
            try {
                l2.b bVar = this.guard;
                final com.google.android.datatransport.runtime.scheduling.persistence.d dVar = this.eventStore;
                Objects.requireNonNull(dVar);
                bVar.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.i
                    @Override // l2.b.a
                    public final Object execute() {
                        return Integer.valueOf(dVar.v());
                    }
                });
                if (k()) {
                    u(pVar, i10);
                } else {
                    this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.j
                        @Override // l2.b.a
                        public final Object execute() {
                            return this.f971a.s(pVar, i10);
                        }
                    });
                }
            } catch (l2.a unused) {
                this.workScheduler.b(pVar, i10 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    @VisibleForTesting
    public com.google.android.datatransport.runtime.i j(g2.m mVar) {
        l2.b bVar = this.guard;
        final com.google.android.datatransport.runtime.scheduling.persistence.c cVar = this.clientHealthMetricsStore;
        Objects.requireNonNull(cVar);
        return mVar.b(com.google.android.datatransport.runtime.i.a().i(this.clock.a()).k(this.uptimeClock.a()).j(CLIENT_HEALTH_METRICS_LOG_SOURCE).h(new com.google.android.datatransport.runtime.h(f2.b.b("proto"), ((h2.a) bVar.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.h
            @Override // l2.b.a
            public final Object execute() {
                return cVar.h();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @RestrictTo
    public g2.g u(final com.google.android.datatransport.runtime.p pVar, int i10) {
        g2.g gVarA;
        g2.m mVar = this.backendRegistry.get(pVar.b());
        long jMax = 0;
        g2.g gVarE = g2.g.e(0L);
        while (true) {
            final long j6 = jMax;
            while (true) {
                if (!((Boolean) this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.k
                    @Override // l2.b.a
                    public final Object execute() {
                        return this.f974a.l(pVar);
                    }
                })).booleanValue()) {
                    this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.q
                        @Override // l2.b.a
                        public final Object execute() {
                            return this.f986a.r(pVar, j6);
                        }
                    });
                    return gVarE;
                }
                final Iterable iterable = (Iterable) this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.l
                    @Override // l2.b.a
                    public final Object execute() {
                        return this.f976a.m(pVar);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return gVarE;
                }
                if (mVar == null) {
                    i2.a.b(LOG_TAG, "Unknown backend for %s, deleting event batch for it...", pVar);
                    gVarA = g2.g.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((com.google.android.datatransport.runtime.scheduling.persistence.k) it.next()).b());
                    }
                    if (pVar.e()) {
                        arrayList.add(j(mVar));
                    }
                    gVarA = mVar.a(g2.f.a().b(arrayList).c(pVar.c()).a());
                }
                gVarE = gVarA;
                if (gVarE.c() == g2.g.a.TRANSIENT_ERROR) {
                    this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.m
                        @Override // l2.b.a
                        public final Object execute() {
                            return this.f978a.n(iterable, pVar, j6);
                        }
                    });
                    this.workScheduler.a(pVar, i10 + 1, true);
                    return gVarE;
                }
                this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.n
                    @Override // l2.b.a
                    public final Object execute() {
                        return this.f981a.o(iterable);
                    }
                });
                if (gVarE.c() == g2.g.a.OK) {
                    break;
                }
                if (gVarE.c() == g2.g.a.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strJ = ((com.google.android.datatransport.runtime.scheduling.persistence.k) it2.next()).b().j();
                        if (map.containsKey(strJ)) {
                            map.put(strJ, Integer.valueOf(((Integer) map.get(strJ)).intValue() + 1));
                        } else {
                            map.put(strJ, 1);
                        }
                    }
                    this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.p
                        @Override // l2.b.a
                        public final Object execute() {
                            return this.f984a.q(map);
                        }
                    });
                }
            }
            jMax = Math.max(j6, gVarE.b());
            if (pVar.e()) {
                this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.o
                    @Override // l2.b.a
                    public final Object execute() {
                        return this.f983a.p();
                    }
                });
            }
        }
    }

    public void v(final com.google.android.datatransport.runtime.p pVar, final int i10, final Runnable runnable) {
        this.executor.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f966a.t(pVar, i10, runnable);
            }
        });
    }

    public r(Context context, g2.e eVar, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, x xVar, Executor executor, l2.b bVar, m2.a aVar, m2.a aVar2, com.google.android.datatransport.runtime.scheduling.persistence.c cVar) {
        this.context = context;
        this.backendRegistry = eVar;
        this.eventStore = dVar;
        this.workScheduler = xVar;
        this.executor = executor;
        this.guard = bVar;
        this.clock = aVar;
        this.uptimeClock = aVar2;
        this.clientHealthMetricsStore = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.clientHealthMetricsStore.i(((Integer) entry.getValue()).intValue(), h2.c.b.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }
}
