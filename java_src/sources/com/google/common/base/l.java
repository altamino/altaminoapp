package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class l<T> implements Serializable {
    private static final long serialVersionUID = 0;

    public abstract T b();

    public abstract boolean c();

    public abstract T e(T t5);

    public static <T> l<T> d(T t5) {
        return new r(o.k(t5));
    }

    l() {
    }

    public static <T> l<T> a() {
        return a.f();
    }
}
