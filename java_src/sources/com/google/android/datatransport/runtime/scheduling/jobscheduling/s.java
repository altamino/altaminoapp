package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public final class s implements com.google.android.datatransport.runtime.dagger.internal.b<r> {
    private final v7.a<g2.e> backendRegistryProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.persistence.c> clientHealthMetricsStoreProvider;
    private final v7.a<m2.a> clockProvider;
    private final v7.a<Context> contextProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> eventStoreProvider;
    private final v7.a<Executor> executorProvider;
    private final v7.a<l2.b> guardProvider;
    private final v7.a<m2.a> uptimeClockProvider;
    private final v7.a<x> workSchedulerProvider;

    public static s a(v7.a<Context> aVar, v7.a<g2.e> aVar2, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar3, v7.a<x> aVar4, v7.a<Executor> aVar5, v7.a<l2.b> aVar6, v7.a<m2.a> aVar7, v7.a<m2.a> aVar8, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.c> aVar9) {
        return new s(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static r c(Context context, g2.e eVar, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, x xVar, Executor executor, l2.b bVar, m2.a aVar, m2.a aVar2, com.google.android.datatransport.runtime.scheduling.persistence.c cVar) {
        return new r(context, eVar, dVar, xVar, executor, bVar, aVar, aVar2, cVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public r get() {
        return c(this.contextProvider.get(), this.backendRegistryProvider.get(), this.eventStoreProvider.get(), this.workSchedulerProvider.get(), this.executorProvider.get(), this.guardProvider.get(), this.clockProvider.get(), this.uptimeClockProvider.get(), this.clientHealthMetricsStoreProvider.get());
    }

    public s(v7.a<Context> aVar, v7.a<g2.e> aVar2, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar3, v7.a<x> aVar4, v7.a<Executor> aVar5, v7.a<l2.b> aVar6, v7.a<m2.a> aVar7, v7.a<m2.a> aVar8, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.c> aVar9) {
        this.contextProvider = aVar;
        this.backendRegistryProvider = aVar2;
        this.eventStoreProvider = aVar3;
        this.workSchedulerProvider = aVar4;
        this.executorProvider = aVar5;
        this.guardProvider = aVar6;
        this.clockProvider = aVar7;
        this.uptimeClockProvider = aVar8;
        this.clientHealthMetricsStoreProvider = aVar9;
    }
}
