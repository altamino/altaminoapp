package kotlin.collections;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class j0<T> {
    private final int index;
    private final T value;

    public final int a() {
        return this.index;
    }

    public final T b() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.index == j0Var.index && kotlin.jvm.internal.t.e(this.value, j0Var.value);
    }

    public int hashCode() {
        int i10 = this.index * 31;
        T t5 = this.value;
        return i10 + (t5 == null ? 0 : t5.hashCode());
    }

    @NotNull
    public String toString() {
        return "IndexedValue(index=" + this.index + ", value=" + this.value + ')';
    }

    public j0(int i10, T t5) {
        this.index = i10;
        this.value = t5;
    }
}
