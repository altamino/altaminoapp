package h8;

import j8.i;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class e {
    public static final int f(int i10, int i11) {
        return (i10 >>> (32 - i11)) & ((-i11) >> 31);
    }

    @NotNull
    public static final String a(@NotNull Object from, @NotNull Object until) {
        t.j(from, "from");
        t.j(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void b(int i10, int i11) {
        if (i11 <= i10) {
            throw new IllegalArgumentException(a(Integer.valueOf(i10), Integer.valueOf(i11)).toString());
        }
    }

    public static final void c(long j6, long j10) {
        if (j10 <= j6) {
            throw new IllegalArgumentException(a(Long.valueOf(j6), Long.valueOf(j10)).toString());
        }
    }

    public static final int e(@NotNull d dVar, @NotNull i range) {
        t.j(dVar, "<this>");
        t.j(range, "range");
        if (!range.isEmpty()) {
            if (range.f() < Integer.MAX_VALUE) {
                return dVar.f(range.e(), range.f() + 1);
            }
            return range.e() > Integer.MIN_VALUE ? dVar.f(range.e() - 1, range.f()) + 1 : dVar.d();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    public static final int d(int i10) {
        return 31 - Integer.numberOfLeadingZeros(i10);
    }
}
