package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public class v {
    private final Executor executor;
    private final l2.b guard;
    private final x scheduler;
    private final com.google.android.datatransport.runtime.scheduling.persistence.d store;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        Iterator<com.google.android.datatransport.runtime.p> it = this.store.a0().iterator();
        while (it.hasNext()) {
            this.scheduler.b(it.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.guard.a(new l2.b.a() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.u
            @Override // l2.b.a
            public final Object execute() {
                return this.f990a.d();
            }
        });
    }

    public void c() {
        this.executor.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.t
            @Override // java.lang.Runnable
            public final void run() {
                this.f989a.e();
            }
        });
    }

    v(Executor executor, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, x xVar, l2.b bVar) {
        this.executor = executor;
        this.store = dVar;
        this.scheduler = xVar;
        this.guard = bVar;
    }
}
