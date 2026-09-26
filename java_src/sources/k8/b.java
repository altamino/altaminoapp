package k8;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import j8.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements Comparable<b> {
    private final long rawValue;

    @NotNull
    public static final a Companion = new a(null);
    private static final long ZERO = j(0);
    private static final long INFINITE = d.j(d.MAX_MILLIS);
    private static final long NEG_INFINITE = d.j(-4611686018427387903L);

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        public final long d(@NotNull String value) {
            t.j(value, "value");
            try {
                return d.p(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        public final long a() {
            return b.INFINITE;
        }

        public final long b() {
            return b.NEG_INFINITE;
        }

        public final long c() {
            return b.ZERO;
        }
    }

    private static final boolean B(long j6) {
        return (((int) j6) & 1) == 1;
    }

    private static final boolean C(long j6) {
        return (((int) j6) & 1) == 0;
    }

    public static final boolean D(long j6) {
        return j6 == INFINITE || j6 == NEG_INFINITE;
    }

    public static final boolean E(long j6) {
        return j6 < 0;
    }

    public static final boolean F(long j6) {
        return j6 > 0;
    }

    public static final /* synthetic */ b f(long j6) {
        return new b(j6);
    }

    public static boolean k(long j6, Object obj) {
        return (obj instanceof b) && j6 == ((b) obj).M();
    }

    public static final boolean l(long j6, long j10) {
        return j6 == j10;
    }

    private static final long y(long j6) {
        return j6 >> 1;
    }

    public static int z(long j6) {
        return i.a.a(j6);
    }

    public final /* synthetic */ long M() {
        return this.rawValue;
    }

    public boolean equals(Object obj) {
        return k(this.rawValue, obj);
    }

    public int hashCode() {
        return z(this.rawValue);
    }

    public static final double H(long j6, @NotNull e unit) {
        t.j(unit, "unit");
        if (j6 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j6 == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return f.a(y(j6), x(j6), unit);
    }

    @NotNull
    public static final String I(long j6) {
        StringBuilder sb = new StringBuilder();
        if (E(j6)) {
            sb.append('-');
        }
        sb.append("PT");
        long jN = n(j6);
        long jQ = q(jN);
        int iU = u(jN);
        int iW = w(jN);
        int iV = v(jN);
        if (D(j6)) {
            jQ = 9999999999999L;
        }
        boolean z6 = false;
        boolean z10 = jQ != 0;
        boolean z11 = (iW == 0 && iV == 0) ? false : true;
        if (iU != 0 || (z11 && z10)) {
            z6 = true;
        }
        if (z10) {
            sb.append(jQ);
            sb.append('H');
        }
        if (z6) {
            sb.append(iU);
            sb.append('M');
        }
        if (z11 || (!z10 && !z6)) {
            e(j6, sb, iW, iV, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }

    public static final long J(long j6, @NotNull e unit) {
        t.j(unit, "unit");
        if (j6 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j6 == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return f.b(y(j6), x(j6), unit);
    }

    @NotNull
    public static String K(long j6) {
        if (j6 == 0) {
            return "0s";
        }
        if (j6 == INFINITE) {
            return "Infinity";
        }
        if (j6 == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zE = E(j6);
        StringBuilder sb = new StringBuilder();
        if (zE) {
            sb.append('-');
        }
        long jN = n(j6);
        long jP = p(jN);
        int iO = o(jN);
        int iU = u(jN);
        int iW = w(jN);
        int iV = v(jN);
        int i10 = 0;
        boolean z6 = jP != 0;
        boolean z10 = iO != 0;
        boolean z11 = iU != 0;
        boolean z12 = (iW == 0 && iV == 0) ? false : true;
        if (z6) {
            sb.append(jP);
            sb.append('d');
            i10 = 1;
        }
        if (z10 || (z6 && (z11 || z12))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iO);
            sb.append('h');
            i10 = i11;
        }
        if (z11 || (z12 && (z10 || z6))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iU);
            sb.append('m');
            i10 = i12;
        }
        if (z12) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            if (iW != 0 || z6 || z10 || z11) {
                e(j6, sb, iW, iV, 9, CmcdHeadersFactory.STREAMING_FORMAT_SS, false);
            } else if (iV >= 1000000) {
                e(j6, sb, iV / 1000000, iV % 1000000, 6, "ms", false);
            } else if (iV >= 1000) {
                e(j6, sb, iV / 1000, iV % 1000, 3, "us", false);
            } else {
                sb.append(iV);
                sb.append("ns");
            }
            i10 = i13;
        }
        if (zE && i10 > 1) {
            sb.insert(1, '(').append(')');
        }
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }

    public static int i(long j6, long j10) {
        long j11 = j6 ^ j10;
        if (j11 < 0 || (((int) j11) & 1) == 0) {
            return t.m(j6, j10);
        }
        int i10 = (((int) j6) & 1) - (((int) j10) & 1);
        return E(j6) ? -i10 : i10;
    }

    public static final long p(long j6) {
        return J(j6, e.DAYS);
    }

    public static final long q(long j6) {
        return J(j6, e.HOURS);
    }

    public static final long s(long j6) {
        return J(j6, e.MINUTES);
    }

    public static final long t(long j6) {
        return J(j6, e.SECONDS);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(b bVar) {
        return h(bVar.M());
    }

    public int h(long j6) {
        return i(this.rawValue, j6);
    }

    @NotNull
    public String toString() {
        return K(this.rawValue);
    }

    private /* synthetic */ b(long j6) {
        this.rawValue = j6;
    }

    public static final boolean A(long j6) {
        return !D(j6);
    }

    public static final long G(long j6, long j10) {
        if (D(j6)) {
            if (!A(j10) && (j10 ^ j6) < 0) {
                throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
            }
            return j6;
        }
        if (D(j10)) {
            return j10;
        }
        if ((((int) j6) & 1) == (((int) j10) & 1)) {
            long jY = y(j6) + y(j10);
            return C(j6) ? d.m(jY) : d.k(jY);
        }
        if (B(j6)) {
            return d(j6, y(j6), y(j10));
        }
        return d(j6, y(j10), y(j6));
    }

    public static final long L(long j6) {
        return d.i(-y(j6), ((int) j6) & 1);
    }

    private static final long d(long j6, long j10, long j11) {
        long jO = d.o(j11);
        long j12 = j10 + jO;
        if (!new l(-4611686018426L, 4611686018426L).j(j12)) {
            return d.j(o.p(j12, -4611686018427387903L, d.MAX_MILLIS));
        }
        return d.l(d.n(j12) + (j11 - d.n(jO)));
    }

    private static final void e(long j6, StringBuilder sb, int i10, int i11, int i12, String str, boolean z6) {
        sb.append(i10);
        if (i11 != 0) {
            sb.append('.');
            String strN0 = u.n0(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = strN0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (strN0.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (!z6 && i15 < 3) {
                sb.append((CharSequence) strN0, 0, i15);
                t.i(sb, "append(...)");
            } else {
                sb.append((CharSequence) strN0, 0, ((i13 + 3) / 3) * 3);
                t.i(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    public static long j(long j6) {
        if (c.a()) {
            if (C(j6)) {
                if (!new l(-4611686018426999999L, d.MAX_NANOS).j(y(j6))) {
                    throw new AssertionError(y(j6) + " ns is out of nanoseconds range");
                }
            } else if (new l(-4611686018427387903L, d.MAX_MILLIS).j(y(j6))) {
                if (new l(-4611686018426L, 4611686018426L).j(y(j6))) {
                    throw new AssertionError(y(j6) + " ms is denormalized");
                }
            } else {
                throw new AssertionError(y(j6) + " ms is out of milliseconds range");
            }
        }
        return j6;
    }

    public static final long n(long j6) {
        if (E(j6)) {
            return L(j6);
        }
        return j6;
    }

    public static final int o(long j6) {
        if (D(j6)) {
            return 0;
        }
        return (int) (q(j6) % ((long) 24));
    }

    public static final long r(long j6) {
        if (B(j6) && A(j6)) {
            return y(j6);
        }
        return J(j6, e.MILLISECONDS);
    }

    public static final int u(long j6) {
        if (D(j6)) {
            return 0;
        }
        return (int) (s(j6) % ((long) 60));
    }

    public static final int v(long j6) {
        long jY;
        if (D(j6)) {
            return 0;
        }
        if (B(j6)) {
            jY = d.n(y(j6) % ((long) 1000));
        } else {
            jY = y(j6) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
        }
        return (int) jY;
    }

    public static final int w(long j6) {
        if (D(j6)) {
            return 0;
        }
        return (int) (t(j6) % ((long) 60));
    }

    private static final e x(long j6) {
        if (C(j6)) {
            return e.NANOSECONDS;
        }
        return e.MILLISECONDS;
    }
}
