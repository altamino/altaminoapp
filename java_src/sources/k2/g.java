package k2;

/* JADX INFO: loaded from: classes9.dex */
public final class g implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.scheduling.jobscheduling.f> {
    private final v7.a<m2.a> clockProvider;

    public static g b(v7.a<m2.a> aVar) {
        return new g(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.google.android.datatransport.runtime.scheduling.jobscheduling.f get() {
        return a(this.clockProvider.get());
    }

    public g(v7.a<m2.a> aVar) {
        this.clockProvider = aVar;
    }

    public static com.google.android.datatransport.runtime.scheduling.jobscheduling.f a(m2.a aVar) {
        return (com.google.android.datatransport.runtime.scheduling.jobscheduling.f) com.google.android.datatransport.runtime.dagger.internal.e.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }
}
