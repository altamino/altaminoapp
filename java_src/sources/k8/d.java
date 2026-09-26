package k8;

import j8.i;
import j8.l;
import j8.o;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.m0;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import kotlin.text.w;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class d {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    /* JADX INFO: Access modifiers changed from: private */
    public static final long i(long j6, int i10) {
        return b.j((j6 << 1) + ((long) i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long j(long j6) {
        return b.j((j6 << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long l(long j6) {
        return b.j(j6 << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long n(long j6) {
        return j6 * ((long) 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long p(String str, boolean z6) {
        boolean z10;
        boolean z11;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        b.a aVar = b.Companion;
        long jC = aVar.c();
        char cCharAt = str.charAt(0);
        boolean z12 = true;
        int length2 = (cCharAt == '+' || cCharAt == '-') ? 1 : 0;
        boolean z13 = length2 > 0;
        boolean z14 = z13 && u.H0(str, '-', false, 2, null);
        if (length <= length2) {
            throw new IllegalArgumentException("No components");
        }
        char c7 = '9';
        char c10 = '0';
        if (str.charAt(length2) == 'P') {
            int i10 = length2 + 1;
            if (i10 == length) {
                throw new IllegalArgumentException();
            }
            boolean z15 = false;
            e eVar = null;
            while (i10 < length) {
                if (str.charAt(i10) != 'T') {
                    int i11 = i10;
                    while (i11 < str.length()) {
                        char cCharAt2 = str.charAt(i11);
                        if (!new j8.c(c10, c7).j(cCharAt2) && !u.O("+-.", cCharAt2, false, 2, null)) {
                            break;
                        }
                        i11++;
                        c10 = '0';
                        c7 = '9';
                    }
                    t.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring = str.substring(i10, i11);
                    t.i(strSubstring, "substring(...)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i10 + strSubstring.length();
                    if (length3 < 0 || length3 > u.W(str)) {
                        throw new IllegalArgumentException("Missing unit for value " + strSubstring);
                    }
                    char cCharAt3 = str.charAt(length3);
                    int i12 = length3 + 1;
                    e eVarD = g.d(cCharAt3, z15);
                    if (eVar != null && eVar.compareTo(eVarD) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iB0 = u.b0(strSubstring, '.', 0, false, 6, null);
                    if (eVarD != e.SECONDS || iB0 <= 0) {
                        jC = b.G(jC, t(q(strSubstring), eVarD));
                    } else {
                        t.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring2 = strSubstring.substring(0, iB0);
                        t.i(strSubstring2, "substring(...)");
                        long jG = b.G(jC, t(q(strSubstring2), eVarD));
                        t.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring3 = strSubstring.substring(iB0);
                        t.i(strSubstring3, "substring(...)");
                        jC = b.G(jG, r(Double.parseDouble(strSubstring3), eVarD));
                    }
                    i10 = i12;
                    eVar = eVarD;
                    c10 = '0';
                    c7 = '9';
                    z12 = true;
                } else {
                    if (z15 || (i10 = i10 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z15 = z12;
                }
            }
        } else {
            if (z6) {
                throw new IllegalArgumentException();
            }
            String str2 = "Unexpected order of duration components";
            long jG2 = jC;
            char c11 = '9';
            if (kotlin.text.t.A(str, length2, "Infinity", 0, Math.max(length - length2, 8), true)) {
                jC = aVar.a();
            } else {
                boolean z16 = !z13;
                if (z13 && str.charAt(length2) == '(' && w.h1(str) == ')') {
                    length2++;
                    length--;
                    if (length2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    z11 = false;
                    z10 = true;
                } else {
                    z10 = z16;
                    z11 = false;
                }
                e eVar2 = null;
                while (length2 < length) {
                    if (z11 && z10) {
                        while (length2 < str.length() && str.charAt(length2) == ' ') {
                            length2++;
                        }
                    }
                    int i13 = length2;
                    while (i13 < str.length()) {
                        char cCharAt4 = str.charAt(i13);
                        if (!new j8.c('0', c11).j(cCharAt4) && cCharAt4 != '.') {
                            break;
                        }
                        i13++;
                    }
                    t.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring4 = str.substring(length2, i13);
                    t.i(strSubstring4, "substring(...)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length4 = length2 + strSubstring4.length();
                    int i14 = length4;
                    while (i14 < str.length()) {
                        if (!new j8.c('a', 'z').j(str.charAt(i14))) {
                            break;
                        }
                        i14++;
                    }
                    t.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring5 = str.substring(length4, i14);
                    t.i(strSubstring5, "substring(...)");
                    length2 = length4 + strSubstring5.length();
                    e eVarE = g.e(strSubstring5);
                    if (eVar2 != null && eVar2.compareTo(eVarE) <= 0) {
                        throw new IllegalArgumentException(str2);
                    }
                    String str3 = str2;
                    int iB1 = u.b0(strSubstring4, '.', 0, false, 6, null);
                    if (iB1 > 0) {
                        t.h(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring6 = strSubstring4.substring(0, iB1);
                        t.i(strSubstring6, "substring(...)");
                        long jG3 = b.G(jG2, t(Long.parseLong(strSubstring6), eVarE));
                        t.h(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring7 = strSubstring4.substring(iB1);
                        t.i(strSubstring7, "substring(...)");
                        jG2 = b.G(jG3, r(Double.parseDouble(strSubstring7), eVarE));
                        if (length2 < length) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                    } else {
                        jG2 = b.G(jG2, t(Long.parseLong(strSubstring4), eVarE));
                    }
                    str2 = str3;
                    eVar2 = eVarE;
                    z11 = true;
                    c11 = '9';
                }
                jC = jG2;
            }
        }
        return z14 ? b.L(jC) : jC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long k(long j6) {
        return new l(-4611686018426L, MAX_NANOS_IN_MILLIS).j(j6) ? l(n(j6)) : j(o.p(j6, -4611686018427387903L, MAX_MILLIS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long m(long j6) {
        return new l(-4611686018426999999L, MAX_NANOS).j(j6) ? l(j6) : j(o(j6));
    }

    public static final long r(double d, @NotNull e unit) {
        t.j(unit, "unit");
        double dA = f.a(d, unit, e.NANOSECONDS);
        if (!(!Double.isNaN(dA))) {
            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
        }
        long jD = g8.c.d(dA);
        return new l(-4611686018426999999L, MAX_NANOS).j(jD) ? l(jD) : k(g8.c.d(f.a(d, unit, e.MILLISECONDS)));
    }

    public static final long s(int i10, @NotNull e unit) {
        t.j(unit, "unit");
        return unit.compareTo(e.SECONDS) <= 0 ? l(f.c(i10, unit, e.NANOSECONDS)) : t(i10, unit);
    }

    public static final long t(long j6, @NotNull e unit) {
        t.j(unit, "unit");
        e eVar = e.NANOSECONDS;
        long jC = f.c(MAX_NANOS, eVar, unit);
        return new l(-jC, jC).j(j6) ? l(f.c(j6, unit, eVar)) : j(o.p(f.b(j6, unit, e.MILLISECONDS), -4611686018427387903L, MAX_MILLIS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long o(long j6) {
        return j6 / ((long) 1000000);
    }

    private static final long q(String str) {
        int i10;
        int length = str.length();
        if (length > 0 && u.O("+-", str.charAt(0), false, 2, null)) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (length - i10 > 16) {
            Iterable iVar = new i(i10, u.W(str));
            if (!(iVar instanceof Collection) || !((Collection) iVar).isEmpty()) {
                Iterator it = iVar.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!new j8.c('0', '9').j(str.charAt(((m0) it).nextInt()))) {
                        }
                    }
                }
            }
            if (str.charAt(0) == '-') {
                return Long.MIN_VALUE;
            }
            return Long.MAX_VALUE;
        }
        if (kotlin.text.t.K(str, org.slf4j.c.ANY_NON_NULL_MARKER, false, 2, null)) {
            str = w.e1(str, 1);
        }
        return Long.parseLong(str);
    }
}
