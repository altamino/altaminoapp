package com.google.android.datatransport.runtime.scheduling.persistence;

/* JADX INFO: loaded from: classes10.dex */
public final class n0 implements com.google.android.datatransport.runtime.dagger.internal.b<m0> {
    private final v7.a<m2.a> clockProvider;
    private final v7.a<e> configProvider;
    private final v7.a<String> packageNameProvider;
    private final v7.a<t0> schemaManagerProvider;
    private final v7.a<m2.a> wallClockProvider;

    public static n0 a(v7.a<m2.a> aVar, v7.a<m2.a> aVar2, v7.a<e> aVar3, v7.a<t0> aVar4, v7.a<String> aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(m2.a aVar, m2.a aVar2, Object obj, Object obj2, v7.a<String> aVar3) {
        return new m0(aVar, aVar2, (e) obj, (t0) obj2, aVar3);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m0 get() {
        return c(this.wallClockProvider.get(), this.clockProvider.get(), this.configProvider.get(), this.schemaManagerProvider.get(), this.packageNameProvider);
    }

    public n0(v7.a<m2.a> aVar, v7.a<m2.a> aVar2, v7.a<e> aVar3, v7.a<t0> aVar4, v7.a<String> aVar5) {
        this.wallClockProvider = aVar;
        this.clockProvider = aVar2;
        this.configProvider = aVar3;
        this.schemaManagerProvider = aVar4;
        this.packageNameProvider = aVar5;
    }
}
