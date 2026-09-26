package k2;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.x;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements com.google.android.datatransport.runtime.dagger.internal.b<c> {
    private final v7.a<g2.e> backendRegistryProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> eventStoreProvider;
    private final v7.a<Executor> executorProvider;
    private final v7.a<l2.b> guardProvider;
    private final v7.a<x> workSchedulerProvider;

    public static d a(v7.a<Executor> aVar, v7.a<g2.e> aVar2, v7.a<x> aVar3, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar4, v7.a<l2.b> aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, g2.e eVar, x xVar, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, l2.b bVar) {
        return new c(executor, eVar, xVar, dVar, bVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c get() {
        return c(this.executorProvider.get(), this.backendRegistryProvider.get(), this.workSchedulerProvider.get(), this.eventStoreProvider.get(), this.guardProvider.get());
    }

    public d(v7.a<Executor> aVar, v7.a<g2.e> aVar2, v7.a<x> aVar3, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar4, v7.a<l2.b> aVar5) {
        this.executorProvider = aVar;
        this.backendRegistryProvider = aVar2;
        this.workSchedulerProvider = aVar3;
        this.eventStoreProvider = aVar4;
        this.guardProvider = aVar5;
    }
}
