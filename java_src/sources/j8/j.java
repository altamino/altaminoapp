package j8;

import kotlin.collections.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class j implements Iterable<Long>, f8.a {

    @NotNull
    public static final a Companion = new a(null);
    private final long first;
    private final long last;
    private final long step;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public final long e() {
        return this.first;
    }

    public final long f() {
        return this.last;
    }

    public boolean isEmpty() {
        long j6 = this.step;
        long j10 = this.first;
        long j11 = this.last;
        if (j6 > 0) {
            if (j10 <= j11) {
                return false;
            }
        } else if (j10 >= j11) {
            return false;
        }
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof j) {
            if (!isEmpty() || !((j) obj).isEmpty()) {
                j jVar = (j) obj;
                if (this.first != jVar.first || this.last != jVar.last || this.step != jVar.step) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public n0 iterator() {
        return new k(this.first, this.last, this.step);
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        long j6;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append("..");
            sb.append(this.last);
            sb.append(" step ");
            j6 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append(" downTo ");
            sb.append(this.last);
            sb.append(" step ");
            j6 = -this.step;
        }
        sb.append(j6);
        return sb.toString();
    }

    public j(long j6, long j10, long j11) {
        if (j11 != 0) {
            if (j11 != Long.MIN_VALUE) {
                this.first = j6;
                this.last = a8.c.d(j6, j10, j11);
                this.step = j11;
                return;
            }
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j6 = 31;
        long j10 = this.first;
        long j11 = this.last;
        long j12 = j6 * (((j10 ^ (j10 >>> 32)) * j6) + (j11 ^ (j11 >>> 32)));
        long j13 = this.step;
        return (int) (j12 + (j13 ^ (j13 >>> 32)));
    }
}
