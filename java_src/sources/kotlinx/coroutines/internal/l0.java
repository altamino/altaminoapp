package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class l0 {
    public static final int a(@NotNull String str, int i10, int i11, int i12) {
        return (int) j0.c(str, i10, i11, i12);
    }

    public static /* synthetic */ int e(String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i11 = 1;
        }
        if ((i13 & 8) != 0) {
            i12 = Integer.MAX_VALUE;
        }
        return j0.b(str, i10, i11, i12);
    }

    public static /* synthetic */ long f(String str, long j6, long j10, long j11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = 1;
        }
        long j12 = j10;
        if ((i10 & 8) != 0) {
            j11 = Long.MAX_VALUE;
        }
        return j0.c(str, j6, j12, j11);
    }

    public static final long b(@NotNull String str, long j6, long j10, long j11) {
        String strD = j0.d(str);
        if (strD != null) {
            Long lO = kotlin.text.s.o(strD);
            if (lO != null) {
                long jLongValue = lO.longValue();
                if (j10 <= jLongValue && jLongValue <= j11) {
                    return jLongValue;
                }
                throw new IllegalStateException(("System property '" + str + "' should be in range " + j10 + ".." + j11 + ", but is '" + jLongValue + '\'').toString());
            }
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strD + '\'').toString());
        }
        return j6;
    }

    @NotNull
    public static final String c(@NotNull String str, @NotNull String str2) {
        String strD = j0.d(str);
        if (strD != null) {
            return strD;
        }
        return str2;
    }

    public static final boolean d(@NotNull String str, boolean z6) {
        String strD = j0.d(str);
        if (strD != null) {
            return Boolean.parseBoolean(strD);
        }
        return z6;
    }
}
