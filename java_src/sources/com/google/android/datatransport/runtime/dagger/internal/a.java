package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes11.dex */
public final class a<T> implements v7.a<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile v7.a<T> provider;

    public static Object b(Object obj, Object obj2) {
        if (obj == UNINITIALIZED || (obj instanceof d) || obj == obj2) {
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
                        this.instance = b(this.instance, t5);
                        this.provider = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t5;
    }

    private a(v7.a<T> aVar) {
        this.provider = aVar;
    }

    public static <P extends v7.a<T>, T> v7.a<T> a(P p) {
        e.b(p);
        if (p instanceof a) {
            return p;
        }
        return new a(p);
    }
}
