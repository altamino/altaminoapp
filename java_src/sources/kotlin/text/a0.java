package kotlin.text;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.d0;
import w7.f0;
import w7.i0;

/* JADX INFO: loaded from: classes10.dex */
public final class a0 {
    public static final byte a(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        w7.b0 b0VarB = b(str);
        if (b0VarB != null) {
            return b0VarB.f();
        }
        s.l(str);
        throw new w7.i();
    }

    @Nullable
    public static final w7.b0 b(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return c(str, 10);
    }

    @Nullable
    public static final w7.b0 c(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        d0 d0VarF = f(str, i10);
        if (d0VarF == null) {
            return null;
        }
        int iF = d0VarF.f();
        if (Integer.compare(iF ^ Integer.MIN_VALUE, d0.b(255) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return w7.b0.a(w7.b0.b((byte) iF));
    }

    public static final int d(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        d0 d0VarE = e(str);
        if (d0VarE != null) {
            return d0VarE.f();
        }
        s.l(str);
        throw new w7.i();
    }

    @Nullable
    public static final d0 e(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return f(str, 10);
    }

    @Nullable
    public static final d0 f(@NotNull String str, int i10) {
        int i11;
        kotlin.jvm.internal.t.j(str, "<this>");
        b.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i12 = 0;
        char cCharAt = str.charAt(0);
        if (kotlin.jvm.internal.t.l(cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i11 = 0;
        }
        int iB = d0.b(i10);
        int iA = 119304647;
        while (i11 < length) {
            int iB2 = b.b(str.charAt(i11), i10);
            if (iB2 < 0) {
                return null;
            }
            if (Integer.compare(i12 ^ Integer.MIN_VALUE, iA ^ Integer.MIN_VALUE) > 0) {
                if (iA == 119304647) {
                    iA = z.a(-1, iB);
                    if (Integer.compare(i12 ^ Integer.MIN_VALUE, iA ^ Integer.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            int iB3 = d0.b(i12 * iB);
            int iB4 = d0.b(d0.b(iB2) + iB3);
            if (Integer.compare(iB4 ^ Integer.MIN_VALUE, iB3 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i11++;
            i12 = iB4;
        }
        return d0.a(i12);
    }

    public static final long g(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        f0 f0VarH = h(str);
        if (f0VarH != null) {
            return f0VarH.f();
        }
        s.l(str);
        throw new w7.i();
    }

    @Nullable
    public static final f0 h(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return i(str, 10);
    }

    @Nullable
    public static final f0 i(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        b.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char cCharAt = str.charAt(0);
        if (kotlin.jvm.internal.t.l(cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jB = f0.b(i10);
        long j6 = 0;
        long jA = 512409557603043100L;
        while (i11 < length) {
            int iB = b.b(str.charAt(i11), i10);
            if (iB < 0) {
                return null;
            }
            if (Long.compare(j6 ^ Long.MIN_VALUE, jA ^ Long.MIN_VALUE) > 0) {
                if (jA == 512409557603043100L) {
                    jA = y.a(-1L, jB);
                    if (Long.compare(j6 ^ Long.MIN_VALUE, jA ^ Long.MIN_VALUE) > 0) {
                    }
                }
                return null;
            }
            long jB2 = f0.b(j6 * jB);
            long jB3 = f0.b(f0.b(((long) d0.b(iB)) & 4294967295L) + jB2);
            if (Long.compare(jB3 ^ Long.MIN_VALUE, jB2 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i11++;
            j6 = jB3;
        }
        return f0.a(j6);
    }

    public static final short j(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        i0 i0VarK = k(str);
        if (i0VarK != null) {
            return i0VarK.f();
        }
        s.l(str);
        throw new w7.i();
    }

    @Nullable
    public static final i0 k(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return l(str, 10);
    }

    @Nullable
    public static final i0 l(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        d0 d0VarF = f(str, i10);
        if (d0VarF == null) {
            return null;
        }
        int iF = d0VarF.f();
        if (Integer.compare(iF ^ Integer.MIN_VALUE, d0.b(65535) ^ Integer.MIN_VALUE) > 0) {
            return null;
        }
        return i0.a(i0.b((short) iF));
    }
}
