package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.core.util.Pair;

/* JADX INFO: loaded from: classes9.dex */
public class i<T> {

    @Nullable
    T first;

    @Nullable
    T second;

    public void b(T t5, T t10) {
        this.first = t5;
        this.second = t10;
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return a(pair.first, this.first) && a(pair.second, this.second);
    }

    public int hashCode() {
        T t5 = this.first;
        int iHashCode = t5 == null ? 0 : t5.hashCode();
        T t10 = this.second;
        return iHashCode ^ (t10 != null ? t10.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.first) + " " + String.valueOf(this.second) + "}";
    }
}
