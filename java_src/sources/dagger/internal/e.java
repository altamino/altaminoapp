package dagger.internal;

/* JADX INFO: loaded from: classes8.dex */
public final class e<T> implements c<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile c<T> provider;

    public static <P extends c<T>, T> c<T> a(P p) {
        return ((p instanceof e) || (p instanceof a)) ? p : new e((c) b.b(p));
    }

    @Override // v7.a
    public T get() {
        T t5 = (T) this.instance;
        if (t5 != UNINITIALIZED) {
            return t5;
        }
        c<T> cVar = this.provider;
        if (cVar == null) {
            return (T) this.instance;
        }
        T t10 = cVar.get();
        this.instance = t10;
        this.provider = null;
        return t10;
    }

    private e(c<T> cVar) {
        this.provider = cVar;
    }
}
