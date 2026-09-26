package x4;

/* JADX INFO: loaded from: classes9.dex */
public final class b implements dagger.internal.c {
    private final a module;

    public static b a(a aVar) {
        return new b(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.google.firebase.perf.config.a get() {
        return c(this.module);
    }

    public b(a aVar) {
        this.module = aVar;
    }

    public static com.google.firebase.perf.config.a c(a aVar) {
        return (com.google.firebase.perf.config.a) dagger.internal.b.c(aVar.a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
