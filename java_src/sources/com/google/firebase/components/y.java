package com.google.firebase.components;

/* JADX INFO: loaded from: classes4.dex */
public class y<T> implements o4.b<T> {
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile o4.b<T> provider;

    @Override // o4.b
    public T get() {
        T t5 = (T) this.instance;
        Object obj = UNINITIALIZED;
        if (t5 == obj) {
            synchronized (this) {
                try {
                    t5 = (T) this.instance;
                    if (t5 == obj) {
                        t5 = this.provider.get();
                        this.instance = t5;
                        this.provider = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t5;
    }

    public y(o4.b<T> bVar) {
        this.provider = bVar;
    }
}
