package x4;

/* JADX INFO: loaded from: classes9.dex */
public final class e implements dagger.internal.c {
    private final a module;

    public static e a(a aVar) {
        return new e(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public o4.b<com.google.firebase.remoteconfig.c> get() {
        return c(this.module);
    }

    public e(a aVar) {
        this.module = aVar;
    }

    public static o4.b<com.google.firebase.remoteconfig.c> c(a aVar) {
        return (o4.b) dagger.internal.b.c(aVar.d(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
