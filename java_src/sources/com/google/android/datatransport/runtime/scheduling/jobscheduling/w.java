package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public final class w implements com.google.android.datatransport.runtime.dagger.internal.b<v> {
    private final v7.a<Executor> executorProvider;
    private final v7.a<l2.b> guardProvider;
    private final v7.a<x> schedulerProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> storeProvider;

    public static w a(v7.a<Executor> aVar, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar2, v7.a<x> aVar3, v7.a<l2.b> aVar4) {
        return new w(aVar, aVar2, aVar3, aVar4);
    }

    public static v c(Executor executor, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, x xVar, l2.b bVar) {
        return new v(executor, dVar, xVar, bVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public v get() {
        return c(this.executorProvider.get(), this.storeProvider.get(), this.schedulerProvider.get(), this.guardProvider.get());
    }

    public w(v7.a<Executor> aVar, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar2, v7.a<x> aVar3, v7.a<l2.b> aVar4) {
        this.executorProvider = aVar;
        this.storeProvider = aVar2;
        this.schedulerProvider = aVar3;
        this.guardProvider = aVar4;
    }
}
