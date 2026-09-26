package com.google.common.base;

/* JADX INFO: loaded from: classes10.dex */
final class r<T> extends l<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    @Override // com.google.common.base.l
    public T b() {
        return this.reference;
    }

    @Override // com.google.common.base.l
    public boolean c() {
        return true;
    }

    @Override // com.google.common.base.l
    public T e(T t5) {
        o.l(t5, "use Optional.orNull() instead of Optional.or(null)");
        return this.reference;
    }

    public boolean equals(Object obj) {
        if (obj instanceof r) {
            return this.reference.equals(((r) obj).reference);
        }
        return false;
    }

    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    public String toString() {
        String strValueOf = String.valueOf(this.reference);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }

    r(T t5) {
        this.reference = t5;
    }
}
