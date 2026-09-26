package j8;

import kotlin.collections.s;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Iterable<Character>, f8.a {

    @NotNull
    public static final C0420a Companion = new C0420a(null);
    private final char first;
    private final char last;
    private final int step;

    /* JADX INFO: renamed from: j8.a$a, reason: collision with other inner class name */
    public static final class C0420a {
        public /* synthetic */ C0420a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0420a() {
        }
    }

    public final char e() {
        return this.first;
    }

    public final char f() {
        return this.last;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (this.first != aVar.first || this.last != aVar.last || this.step != aVar.step) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public s iterator() {
        return new b(this.first, this.last, this.step);
    }

    public boolean isEmpty() {
        if (this.step > 0) {
            if (t.l(this.first, this.last) <= 0) {
                return false;
            }
        } else if (t.l(this.first, this.last) >= 0) {
            return false;
        }
        return true;
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

    public a(char c7, char c10, int i10) {
        if (i10 != 0) {
            if (i10 != Integer.MIN_VALUE) {
                this.first = c7;
                this.last = (char) a8.c.c(c7, c10, i10);
                this.step = i10;
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
