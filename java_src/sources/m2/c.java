package m2;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements com.google.android.datatransport.runtime.dagger.internal.b<m2.a> {

    private static final class a {
        private static final c INSTANCE = new c();
    }

    public static c a() {
        return a.INSTANCE;
    }

    public static m2.a b() {
        return (m2.a) com.google.android.datatransport.runtime.dagger.internal.e.c(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // v7.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public m2.a get() {
        return b();
    }
}
