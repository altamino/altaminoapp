package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class a<T> implements c<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile c<T> provider;

    private static Object c(Object obj, Object obj2) {
        if (obj == UNINITIALIZED || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // v7.a
    public T get() {
        T t5 = (T) this.instance;
        Object obj = UNINITIALIZED;
        if (t5 == obj) {
            synchronized (this) {
                try {
                    t5 = (T) this.instance;
                    if (t5 == obj) {
                        t5 = this.provider.get();
                        this.instance = c(this.instance, t5);
                        this.provider = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t5;
    }

    private a(c<T> cVar) {
        this.provider = cVar;
    }

    public static <P extends c<T>, T> c<T> a(P p) {
        b.b(p);
        if (p instanceof a) {
            return p;
        }
        return new a(p);
    }

    @Deprecated
    public static <P extends v7.a<T>, T> v7.a<T> b(P p) {
        return a(d.a(p));
    }
}
