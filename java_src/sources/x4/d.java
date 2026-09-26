package x4;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements dagger.internal.c {
    private final a module;

    public static d a(a aVar) {
        return new d(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.google.firebase.installations.h get() {
        return c(this.module);
    }

    public d(a aVar) {
        this.module = aVar;
    }

    public static com.google.firebase.installations.h c(a aVar) {
        return (com.google.firebase.installations.h) dagger.internal.b.c(aVar.c(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
