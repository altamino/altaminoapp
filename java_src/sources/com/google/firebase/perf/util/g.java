package com.google.firebase.perf.util;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes8.dex */
public final class g<T> {
    private final T value;

    private g() {
        this.value = null;
    }

    public boolean d() {
        return this.value != null;
    }

    private g(T t5) {
        if (t5 == null) {
            throw new NullPointerException("value for optional is empty.");
        }
        this.value = t5;
    }

    public static <T> g<T> a() {
        return new g<>();
    }

    public static <T> g<T> b(T t5) {
        return t5 == null ? a() : e(t5);
    }

    public static <T> g<T> e(T t5) {
        return new g<>(t5);
    }

    public T c() {
        T t5 = this.value;
        if (t5 != null) {
            return t5;
        }
        throw new NoSuchElementException("No value present");
    }
}
