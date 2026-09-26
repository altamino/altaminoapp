package k2;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.x;

/* JADX INFO: loaded from: classes9.dex */
public final class i implements com.google.android.datatransport.runtime.dagger.internal.b<x> {
    private final v7.a<m2.a> clockProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.f> configProvider;
    private final v7.a<Context> contextProvider;
    private final v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> eventStoreProvider;

    public static i a(v7.a<Context> aVar, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar2, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.f> aVar3, v7.a<m2.a> aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public x get() {
        return c(this.contextProvider.get(), this.eventStoreProvider.get(), this.configProvider.get(), this.clockProvider.get());
    }

    public i(v7.a<Context> aVar, v7.a<com.google.android.datatransport.runtime.scheduling.persistence.d> aVar2, v7.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.f> aVar3, v7.a<m2.a> aVar4) {
        this.contextProvider = aVar;
        this.eventStoreProvider = aVar2;
        this.configProvider = aVar3;
        this.clockProvider = aVar4;
    }

    public static x c(Context context, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.f fVar, m2.a aVar) {
        return (x) com.google.android.datatransport.runtime.dagger.internal.e.c(h.a(context, dVar, fVar, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }
}
