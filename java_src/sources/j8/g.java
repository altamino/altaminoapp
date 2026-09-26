package j8;

import kotlin.collections.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class g implements Iterable<Integer>, f8.a {

    @NotNull
    public static final a Companion = new a(null);
    private final int first;
    private final int last;
    private final int step;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final g a(int i10, int i11, int i12) {
            return new g(i10, i11, i12);
        }
    }

    public final int e() {
        return this.first;
    }

    public final int f() {
        return this.last;
    }

    public final int g() {
        return this.step;
    }

    public boolean isEmpty() {
        if (this.step > 0) {
            if (this.first <= this.last) {
                return false;
            }
        } else if (this.first >= this.last) {
            return false;
        }
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof g) {
            if (!isEmpty() || !((g) obj).isEmpty()) {
                g gVar = (g) obj;
                if (this.first != gVar.first || this.last != gVar.last || this.step != gVar.step) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public m0 iterator() {
        return new h(this.first, this.last, this.step);
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        int i10;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append("..");
            sb.append(this.last);
            sb.append(" step ");
            i10 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append(" downTo ");
            sb.append(this.last);
            sb.append(" step ");
            i10 = -this.step;
        }
        sb.append(i10);
        return sb.toString();
    }

    public g(int i10, int i11, int i12) {
        if (i12 != 0) {
            if (i12 != Integer.MIN_VALUE) {
                this.first = i10;
                this.last = a8.c.c(i10, i11, i12);
                this.step = i12;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.first * 31) + this.last) * 31) + this.step;
    }
}
