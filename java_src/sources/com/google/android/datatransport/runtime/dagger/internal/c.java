package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes11.dex */
public final class c<T> implements b<T> {
    private static final c<Object> NULL_INSTANCE_FACTORY = new c<>(null);
    private final T instance;

    @Override // v7.a
    public T get() {
        return this.instance;
    }

    public static <T> b<T> a(T t5) {
        return new c(e.c(t5, "instance cannot be null"));
    }

    private c(T t5) {
        this.instance = t5;
    }
}
