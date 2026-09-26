package androidx.core.util;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    @NonNull
    public static <A, B> Pair<A, B> a(A a7, B b7) {
        return new Pair<>(a7, b7);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return ObjectsCompat.a(pair.first, this.first) && ObjectsCompat.a(pair.second, this.second);
    }

    public int hashCode() {
        F f = this.first;
        int iHashCode = f == null ? 0 : f.hashCode();
        S s = this.second;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "Pair{" + this.first + " " + this.second + "}";
    }

    public Pair(F f, S s) {
        this.first = f;
        this.second = s;
    }
}
