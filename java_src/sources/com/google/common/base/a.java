package com.google.common.base;

/* JADX INFO: loaded from: classes10.dex */
final class a<T> extends l<T> {
    static final a<Object> INSTANCE = new a<>();
    private static final long serialVersionUID = 0;

    static <T> l<T> f() {
        return INSTANCE;
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.base.l
    public boolean c() {
        return false;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return 2040732332;
    }

    public String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.l
    public T b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.l
    public T e(T t5) {
        return (T) o.l(t5, "use Optional.orNull() instead of Optional.or(null)");
    }

    private a() {
    }
}
