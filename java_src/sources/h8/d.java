package h8;

import java.io.Serializable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {

    @NotNull
    public static final a Default = new a(null);

    @NotNull
    private static final d defaultRandom = a8.b.IMPLEMENTATIONS.b();

    public static final class a extends d implements Serializable {

        /* JADX INFO: renamed from: h8.d$a$a, reason: collision with other inner class name */
        private static final class C0384a implements Serializable {

            @NotNull
            public static final C0384a INSTANCE = new C0384a();
            private static final long serialVersionUID = 0;

            private final Object readResolve() {
                return d.Default;
            }

            private C0384a() {
            }
        }

        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        private final Object writeReplace() {
            return C0384a.INSTANCE;
        }

        @Override // h8.d
        public int b(int i10) {
            return d.defaultRandom.b(i10);
        }

        @Override // h8.d
        public double c() {
            return d.defaultRandom.c();
        }

        @Override // h8.d
        public int d() {
            return d.defaultRandom.d();
        }

        @Override // h8.d
        public int e(int i10) {
            return d.defaultRandom.e(i10);
        }

        @Override // h8.d
        public int f(int i10, int i11) {
            return d.defaultRandom.f(i10, i11);
        }

        @Override // h8.d
        public long g() {
            return d.defaultRandom.g();
        }

        @Override // h8.d
        public long h(long j6) {
            return d.defaultRandom.h(j6);
        }

        @Override // h8.d
        public long i(long j6, long j10) {
            return d.defaultRandom.i(j6, j10);
        }
    }

    public abstract int b(int i10);

    public int e(int i10) {
        return f(0, i10);
    }

    public double c() {
        return c.a(b(26), b(27));
    }

    public int d() {
        return b(32);
    }

    public long h(long j6) {
        return i(0L, j6);
    }

    public int f(int i10, int i11) {
        int iD;
        int i12;
        int iB;
        e.b(i10, i11);
        int i13 = i11 - i10;
        if (i13 > 0 || i13 == Integer.MIN_VALUE) {
            if (((-i13) & i13) == i13) {
                iB = b(e.d(i13));
            } else {
                do {
                    iD = d() >>> 1;
                    i12 = iD % i13;
                } while ((iD - i12) + (i13 - 1) < 0);
                iB = i12;
            }
            return i10 + iB;
        }
        while (true) {
            int iD2 = d();
            if (i10 <= iD2 && iD2 < i11) {
                return iD2;
            }
        }
    }

    public long g() {
        return (((long) d()) << 32) + ((long) d());
    }

    public long i(long j6, long j10) {
        long jG;
        long j11;
        long jB;
        int iD;
        e.c(j6, j10);
        long j12 = j10 - j6;
        if (j12 > 0) {
            if (((-j12) & j12) == j12) {
                int i10 = (int) j12;
                int i11 = (int) (j12 >>> 32);
                if (i10 != 0) {
                    iD = b(e.d(i10));
                } else if (i11 == 1) {
                    iD = d();
                } else {
                    jB = (((long) b(e.d(i11))) << 32) + (((long) d()) & 4294967295L);
                }
                jB = ((long) iD) & 4294967295L;
            } else {
                do {
                    jG = g() >>> 1;
                    j11 = jG % j12;
                } while ((jG - j11) + (j12 - 1) < 0);
                jB = j11;
            }
            return j6 + jB;
        }
        while (true) {
            long jG2 = g();
            if (j6 <= jG2 && jG2 < j10) {
                return jG2;
            }
        }
    }
}
