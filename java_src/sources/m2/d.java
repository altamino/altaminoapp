package m2;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements com.google.android.datatransport.runtime.dagger.internal.b<m2.a> {

    private static final class a {
        private static final d INSTANCE = new d();
    }

    public static d a() {
        return a.INSTANCE;
    }

    public static m2.a c() {
        return (m2.a) com.google.android.datatransport.runtime.dagger.internal.e.c(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // v7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m2.a get() {
        return c();
    }
}
