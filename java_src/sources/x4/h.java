package x4;

/* JADX INFO: loaded from: classes9.dex */
public final class h implements dagger.internal.c {
    private final a module;

    public static h a(a aVar) {
        return new h(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public o4.b<f2.g> get() {
        return c(this.module);
    }

    public h(a aVar) {
        this.module = aVar;
    }

    public static o4.b<f2.g> c(a aVar) {
        return (o4.b) dagger.internal.b.c(aVar.g(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
