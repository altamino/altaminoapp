package x4;

import com.google.firebase.perf.config.RemoteConfigManager;

/* JADX INFO: loaded from: classes9.dex */
public final class f implements dagger.internal.c {
    private final a module;

    public static f a(a aVar) {
        return new f(aVar);
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RemoteConfigManager get() {
        return c(this.module);
    }

    public f(a aVar) {
        this.module = aVar;
    }

    public static RemoteConfigManager c(a aVar) {
        return (RemoteConfigManager) dagger.internal.b.c(aVar.e(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
