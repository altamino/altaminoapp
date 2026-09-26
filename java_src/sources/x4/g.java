package x4;

import com.google.firebase.perf.session.SessionManager;

/* JADX INFO: loaded from: classes9.dex */
public final class g implements dagger.internal.c {
    private final a module;

    public static g a(a aVar) {
        return new g(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SessionManager get() {
        return c(this.module);
    }

    public g(a aVar) {
        this.module = aVar;
    }

    public static SessionManager c(a aVar) {
        return (SessionManager) dagger.internal.b.c(aVar.f(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
