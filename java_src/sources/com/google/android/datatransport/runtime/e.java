package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.x;
import com.google.android.datatransport.runtime.scheduling.persistence.m0;
import com.google.android.datatransport.runtime.scheduling.persistence.n0;
import com.google.android.datatransport.runtime.scheduling.persistence.u0;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
final class e extends v {
    private v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.f> configProvider;
    private v7.a creationContextFactoryProvider;
    private v7.a<k2.c> defaultSchedulerProvider;
    private v7.a<Executor> executorProvider;
    private v7.a metadataBackendRegistryProvider;
    private v7.a<String> packageNameProvider;
    private v7.a<m0> sQLiteEventStoreProvider;
    private v7.a schemaManagerProvider;
    private v7.a<Context> setApplicationContextProvider;
    private v7.a<u> transportRuntimeProvider;
    private v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.r> uploaderProvider;
    private v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.v> workInitializerProvider;
    private v7.a<x> workSchedulerProvider;

    private static final class b implements v.a {
        private Context setApplicationContext;

        private b() {
        }

        @Override // com.google.android.datatransport.runtime.v.a
        public v build() {
            com.google.android.datatransport.runtime.dagger.internal.e.a(this.setApplicationContext, Context.class);
            return new e(this.setApplicationContext);
        }

        @Override // com.google.android.datatransport.runtime.v.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Context context) {
            this.setApplicationContext = (Context) com.google.android.datatransport.runtime.dagger.internal.e.b(context);
            return this;
        }
    }

    private e(Context context) {
        l(context);
    }

    public static v.a k() {
        return new b();
    }

    @Override // com.google.android.datatransport.runtime.v
    com.google.android.datatransport.runtime.scheduling.persistence.d d() {
        return this.sQLiteEventStoreProvider.get();
    }

    @Override // com.google.android.datatransport.runtime.v
    u h() {
        return this.transportRuntimeProvider.get();
    }

    private void l(Context context) {
        this.executorProvider = com.google.android.datatransport.runtime.dagger.internal.a.a(k.a());
        com.google.android.datatransport.runtime.dagger.internal.b bVarA = com.google.android.datatransport.runtime.dagger.internal.c.a(context);
        this.setApplicationContextProvider = bVarA;
        g2.j jVarA = g2.j.a(bVarA, m2.c.a(), m2.d.a());
        this.creationContextFactoryProvider = jVarA;
        this.metadataBackendRegistryProvider = com.google.android.datatransport.runtime.dagger.internal.a.a(g2.l.a(this.setApplicationContextProvider, jVarA));
        this.schemaManagerProvider = u0.a(this.setApplicationContextProvider, com.google.android.datatransport.runtime.scheduling.persistence.g.a(), com.google.android.datatransport.runtime.scheduling.persistence.i.a());
        this.packageNameProvider = com.google.android.datatransport.runtime.dagger.internal.a.a(com.google.android.datatransport.runtime.scheduling.persistence.h.a(this.setApplicationContextProvider));
        this.sQLiteEventStoreProvider = com.google.android.datatransport.runtime.dagger.internal.a.a(n0.a(m2.c.a(), m2.d.a(), com.google.android.datatransport.runtime.scheduling.persistence.j.a(), this.schemaManagerProvider, this.packageNameProvider));
        k2.g gVarB = k2.g.b(m2.c.a());
        this.configProvider = gVarB;
        k2.i iVarA = k2.i.a(this.setApplicationContextProvider, this.sQLiteEventStoreProvider, gVarB, m2.d.a());
        this.workSchedulerProvider = iVarA;
        v7.a<Executor> aVar = this.executorProvider;
        v7.a aVar2 = this.metadataBackendRegistryProvider;
        v7.a<m0> aVar3 = this.sQLiteEventStoreProvider;
        this.defaultSchedulerProvider = k2.d.a(aVar, aVar2, iVarA, aVar3, aVar3);
        v7.a<Context> aVar4 = this.setApplicationContextProvider;
        v7.a aVar5 = this.metadataBackendRegistryProvider;
        v7.a<m0> aVar6 = this.sQLiteEventStoreProvider;
        this.uploaderProvider = com.google.android.datatransport.runtime.scheduling.jobscheduling.s.a(aVar4, aVar5, aVar6, this.workSchedulerProvider, this.executorProvider, aVar6, m2.c.a(), m2.d.a(), this.sQLiteEventStoreProvider);
        v7.a<Executor> aVar7 = this.executorProvider;
        v7.a<m0> aVar8 = this.sQLiteEventStoreProvider;
        this.workInitializerProvider = com.google.android.datatransport.runtime.scheduling.jobscheduling.w.a(aVar7, aVar8, this.workSchedulerProvider, aVar8);
        this.transportRuntimeProvider = com.google.android.datatransport.runtime.dagger.internal.a.a(w.a(m2.c.a(), m2.d.a(), this.defaultSchedulerProvider, this.uploaderProvider, this.workInitializerProvider));
    }
}
