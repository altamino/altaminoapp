package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes9.dex */
public final class w implements com.google.android.datatransport.runtime.dagger.internal.b<u> {
    private final v7.a<m2.a> eventClockProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.v> initializerProvider;
    private final v7.a<k2.e> schedulerProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.r> uploaderProvider;
    private final v7.a<m2.a> uptimeClockProvider;

    public static w a(v7.a<m2.a> aVar, v7.a<m2.a> aVar2, v7.a<k2.e> aVar3, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.r> aVar4, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.v> aVar5) {
        return new w(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static u c(m2.a aVar, m2.a aVar2, k2.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.r rVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.v vVar) {
        return new u(aVar, aVar2, eVar, rVar, vVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public u get() {
        return c(this.eventClockProvider.get(), this.uptimeClockProvider.get(), this.schedulerProvider.get(), this.uploaderProvider.get(), this.initializerProvider.get());
    }

    public w(v7.a<m2.a> aVar, v7.a<m2.a> aVar2, v7.a<k2.e> aVar3, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.r> aVar4, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.v> aVar5) {
        this.eventClockProvider = aVar;
        this.uptimeClockProvider = aVar2;
        this.schedulerProvider = aVar3;
        this.uploaderProvider = aVar4;
        this.initializerProvider = aVar5;
    }
}
