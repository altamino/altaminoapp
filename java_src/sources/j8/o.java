package j8;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/*  JADX ERROR: ConcurrentModificationException in pass: FixAccessModifiers
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.fixaccessmodifiers.FixAccessModifiers.fixClassVisibility(FixAccessModifiers.java:69)
    	at jadx.core.dex.visitors.fixaccessmodifiers.FixAccessModifiers.visit(FixAccessModifiers.java:45)
    */
/* JADX INFO: loaded from: classes7.dex */
public class o extends n {
    public static double c(double d, double d2) {
        return d < d2 ? d2 : d;
    }

    public static float d(float f, float f6) {
        return f < f6 ? f6 : f;
    }

    public static int e(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static long f(long j6, long j10) {
        return j6 < j10 ? j10 : j6;
    }

    public static double h(double d, double d2) {
        return d > d2 ? d2 : d;
    }

    public static float i(float f, float f6) {
        return f > f6 ? f6 : f;
    }

    public static int j(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static long k(long j6, long j10) {
        return j6 > j10 ? j10 : j6;
    }

    @NotNull
    public static <T extends Comparable<? super T>> T g(@NotNull T t5, @NotNull T minimumValue) {
        t.j(t5, "<this>");
        t.j(minimumValue, "minimumValue");
        return t5.compareTo(minimumValue) < 0 ? minimumValue : t5;
    }

    public static double l(double d, double d2, double d6) {
        if (d2 <= d6) {
            if (d < d2) {
                return d2;
            }
            return d > d6 ? d6 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d6 + " is less than minimum " + d2 + '.');
    }

    public static float m(float f, float f6, float f7) {
        if (f6 <= f7) {
            if (f < f6) {
                return f6;
            }
            return f > f7 ? f7 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f7 + " is less than minimum " + f6 + '.');
    }

    public static int n(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i10 < i11) {
                return i11;
            }
            return i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static int o(int i10, @NotNull f<Integer> range) {
        t.j(range, "range");
        if (range instanceof e) {
            return ((Number) q(Integer.valueOf(i10), (e) range)).intValue();
        }
        if (!range.isEmpty()) {
            if (i10 < ((Number) range.getStart()).intValue()) {
                return ((Number) range.getStart()).intValue();
            }
            return i10 > ((Number) range.c()).intValue() ? ((Number) range.c()).intValue() : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static long p(long j6, long j10, long j11) {
        if (j10 <= j11) {
            if (j6 < j10) {
                return j10;
            }
            return j6 > j11 ? j11 : j6;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j11 + " is less than minimum " + j10 + '.');
    }

    @NotNull
    public static <T extends Comparable<? super T>> T q(@NotNull T t5, @NotNull e<T> range) {
        t.j(t5, "<this>");
        t.j(range, "range");
        if (!range.isEmpty()) {
            if (!range.a(t5, range.getStart()) || range.a(range.getStart(), t5)) {
                return (!range.a(range.c(), t5) || range.a(t5, range.c())) ? t5 : range.c();
            }
            return range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @NotNull
    public static g r(int i10, int i11) {
        return g.Companion.a(i10, i11, -1);
    }

    public static int s(@NotNull i iVar, @NotNull h8.d random) {
        t.j(iVar, "<this>");
        t.j(random, "random");
        try {
            return h8.e.e(random, iVar);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @NotNull
    public static g t(@NotNull g gVar) {
        t.j(gVar, "<this>");
        return g.Companion.a(gVar.f(), gVar.e(), -gVar.g());
    }

    @NotNull
    public static g u(@NotNull g gVar, int i10) {
        t.j(gVar, "<this>");
        n.a(i10 > 0, Integer.valueOf(i10));
        g.a aVar = g.Companion;
        int iE = gVar.e();
        int iF = gVar.f();
        if (gVar.g() <= 0) {
            i10 = -i10;
        }
        return aVar.a(iE, iF, i10);
    }

    @NotNull
    public static i v(int i10, int i11) {
        return i11 <= Integer.MIN_VALUE ? i.Companion.a() : new i(i10, i11 - 1);
    }
}
