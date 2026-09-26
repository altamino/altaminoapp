package x4;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements dagger.internal.c {
    private final a module;

    public static c a(a aVar) {
        return new c(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.google.firebase.f get() {
        return c(this.module);
    }

    public c(a aVar) {
        this.module = aVar;
    }

    public static com.google.firebase.f c(a aVar) {
        return (com.google.firebase.f) dagger.internal.b.c(aVar.b(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
