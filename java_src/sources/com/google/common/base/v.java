package com.google.common.base;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes10.dex */
public final class v {

    static class a<T> implements u<T>, Serializable {
        private static final long serialVersionUID = 0;
        final u<T> delegate;
        volatile transient boolean initialized;
        transient T value;

        @Override // com.google.common.base.u
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    try {
                        if (!this.initialized) {
                            T t5 = this.delegate.get();
                            this.value = t5;
                            this.initialized = true;
                            return t5;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (T) j.a(this.value);
        }

        public String toString() {
            Object string;
            if (this.initialized) {
                String strValueOf = String.valueOf(this.value);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(strValueOf);
                sb.append(">");
                string = sb.toString();
            } else {
                string = this.delegate;
            }
            String strValueOf2 = String.valueOf(string);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(strValueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        a(u<T> uVar) {
            this.delegate = (u) o.k(uVar);
        }
    }

    static class b<T> implements u<T> {
        volatile u<T> delegate;
        volatile boolean initialized;
        T value;

        @Override // com.google.common.base.u
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    try {
                        if (!this.initialized) {
                            u<T> uVar = this.delegate;
                            Objects.requireNonNull(uVar);
                            T t5 = uVar.get();
                            this.value = t5;
                            this.initialized = true;
                            this.delegate = null;
                            return t5;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (T) j.a(this.value);
        }

        public String toString() {
            Object string = this.delegate;
            if (string == null) {
                String strValueOf = String.valueOf(this.value);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(strValueOf);
                sb.append(">");
                string = sb.toString();
            }
            String strValueOf2 = String.valueOf(string);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(strValueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        b(u<T> uVar) {
            this.delegate = (u) o.k(uVar);
        }
    }

    private static class c<T> implements u<T>, Serializable {
        private static final long serialVersionUID = 0;
        final T instance;

        @Override // com.google.common.base.u
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return k.b(this.instance);
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return k.a(this.instance, ((c) obj).instance);
            }
            return false;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.instance);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Suppliers.ofInstance(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }

        c(T t5) {
            this.instance = t5;
        }
    }

    public static <T> u<T> a(u<T> uVar) {
        if ((uVar instanceof b) || (uVar instanceof a)) {
            return uVar;
        }
        return uVar instanceof Serializable ? new a(uVar) : new b(uVar);
    }

    public static <T> u<T> b(T t5) {
        return new c(t5);
    }
}
