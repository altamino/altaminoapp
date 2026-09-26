package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class z<A, B, C> implements Serializable {
    private final A first;
    private final B second;
    private final C third;

    public final A a() {
        return this.first;
    }

    public final B b() {
        return this.second;
    }

    public final C c() {
        return this.third;
    }

    public final A d() {
        return this.first;
    }

    public final B e() {
        return this.second;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return kotlin.jvm.internal.t.e(this.first, zVar.first) && kotlin.jvm.internal.t.e(this.second, zVar.second) && kotlin.jvm.internal.t.e(this.third, zVar.third);
    }

    public final C f() {
        return this.third;
    }

    public int hashCode() {
        A a7 = this.first;
        int iHashCode = (a7 == null ? 0 : a7.hashCode()) * 31;
        B b7 = this.second;
        int iHashCode2 = (iHashCode + (b7 == null ? 0 : b7.hashCode())) * 31;
        C c7 = this.third;
        return iHashCode2 + (c7 != null ? c7.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ", " + this.third + ')';
    }

    public z(A a7, B b7, C c7) {
        this.first = a7;
        this.second = b7;
        this.third = c7;
    }
}
