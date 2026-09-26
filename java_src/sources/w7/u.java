package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class u<A, B> implements Serializable {
    private final A first;
    private final B second;

    public final A a() {
        return this.first;
    }

    public final B b() {
        return this.second;
    }

    public final A c() {
        return this.first;
    }

    public final B d() {
        return this.second;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return kotlin.jvm.internal.t.e(this.first, uVar.first) && kotlin.jvm.internal.t.e(this.second, uVar.second);
    }

    public int hashCode() {
        A a7 = this.first;
        int iHashCode = (a7 == null ? 0 : a7.hashCode()) * 31;
        B b7 = this.second;
        return iHashCode + (b7 != null ? b7.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }

    public u(A a7, B b7) {
        this.first = a7;
        this.second = b7;
    }
}
