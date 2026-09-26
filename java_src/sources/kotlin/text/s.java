package kotlin.text;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class s extends r {
    @NotNull
    public static final Void l(@NotNull String input) {
        kotlin.jvm.internal.t.j(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }

    @Nullable
    public static Integer m(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return n(str, 10);
    }

    @Nullable
    public static final Integer n(@NotNull String str, int i10) {
        boolean z6;
        int i11;
        int i12;
        kotlin.jvm.internal.t.j(str, "<this>");
        b.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i13 = 0;
        char cCharAt = str.charAt(0);
        int i14 = -2147483647;
        if (kotlin.jvm.internal.t.l(cCharAt, 48) < 0) {
            i11 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                i14 = Integer.MIN_VALUE;
                z6 = true;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z6 = false;
            }
        } else {
            z6 = false;
            i11 = 0;
        }
        int i15 = -59652323;
        while (i11 < length) {
            int iB = b.b(str.charAt(i11), i10);
            if (iB < 0) {
                return null;
            }
            if ((i13 < i15 && (i15 != -59652323 || i13 < (i15 = i14 / i10))) || (i12 = i13 * i10) < i14 + iB) {
                return null;
            }
            i13 = i12 - iB;
            i11++;
        }
        return z6 ? Integer.valueOf(i13) : Integer.valueOf(-i13);
    }

    @Nullable
    public static Long o(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return p(str, 10);
    }

    @Nullable
    public static final Long p(@NotNull String str, int i10) {
        boolean z6;
        kotlin.jvm.internal.t.j(str, "<this>");
        b.a(i10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char cCharAt = str.charAt(0);
        long j6 = -9223372036854775807L;
        if (kotlin.jvm.internal.t.l(cCharAt, 48) < 0) {
            z6 = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                j6 = Long.MIN_VALUE;
                i11 = 1;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z6 = false;
                i11 = 1;
            }
        } else {
            z6 = false;
        }
        long j10 = -256204778801521550L;
        long j11 = 0;
        long j12 = -256204778801521550L;
        while (i11 < length) {
            int iB = b.b(str.charAt(i11), i10);
            if (iB < 0) {
                return null;
            }
            if (j11 < j12) {
                if (j12 == j10) {
                    j12 = j6 / ((long) i10);
                    if (j11 < j12) {
                    }
                }
                return null;
            }
            long j13 = j11 * ((long) i10);
            long j14 = iB;
            if (j13 < j6 + j14) {
                return null;
            }
            j11 = j13 - j14;
            i11++;
            j10 = -256204778801521550L;
        }
        return z6 ? Long.valueOf(j11) : Long.valueOf(-j11);
    }
}
