package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class TimeUtils {

    @RestrictTo
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private static int a(int i10, int i11, boolean z6, int i12) {
        if (i10 > 99 || (z6 && i12 >= 3)) {
            return i11 + 3;
        }
        if (i10 > 9 || (z6 && i12 >= 2)) {
            return i11 + 2;
        }
        if (z6 || i10 > 0) {
            return i11 + 1;
        }
        return 0;
    }

    @RestrictTo
    public static void c(long j6, PrintWriter printWriter) {
        d(j6, printWriter, 0);
    }

    @RestrictTo
    public static void b(long j6, long j10, PrintWriter printWriter) {
        if (j6 == 0) {
            printWriter.print("--");
        } else {
            d(j6 - j10, printWriter, 0);
        }
    }

    @RestrictTo
    public static void d(long j6, PrintWriter printWriter, int i10) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, f(j6, i10)));
        }
    }

    @RestrictTo
    public static void e(long j6, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, f(j6, 0));
        }
    }

    private static int f(long j6, int i10) {
        char c7;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        long j10 = j6;
        if (sFormatStr.length < i10) {
            sFormatStr = new char[i10];
        }
        char[] cArr = sFormatStr;
        if (j10 == 0) {
            int i16 = i10 - 1;
            while (i16 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j10 > 0) {
            c7 = '+';
        } else {
            j10 = -j10;
            c7 = '-';
        }
        int i17 = (int) (j10 % 1000);
        int iFloor = (int) Math.floor(j10 / 1000);
        if (iFloor > 86400) {
            i11 = iFloor / 86400;
            iFloor -= 86400 * i11;
        } else {
            i11 = 0;
        }
        if (iFloor > 3600) {
            i12 = iFloor / 3600;
            iFloor -= i12 * 3600;
        } else {
            i12 = 0;
        }
        if (iFloor > 60) {
            int i18 = iFloor / 60;
            i13 = iFloor - (i18 * 60);
            i14 = i18;
        } else {
            i13 = iFloor;
            i14 = 0;
        }
        if (i10 != 0) {
            int iA = a(i11, 1, false, 0);
            int iA2 = iA + a(i12, 1, iA > 0, 2);
            int iA3 = iA2 + a(i14, 1, iA2 > 0, 2);
            int iA4 = iA3 + a(i13, 1, iA3 > 0, 2);
            i15 = 0;
            for (int iA5 = iA4 + a(i17, 2, true, iA4 > 0 ? 3 : 0) + 1; iA5 < i10; iA5++) {
                cArr[i15] = ' ';
                i15++;
            }
        } else {
            i15 = 0;
        }
        cArr[i15] = c7;
        int i19 = i15 + 1;
        boolean z6 = i10 != 0;
        int iG = g(cArr, i11, 'd', i19, false, 0);
        int iG2 = g(cArr, i12, 'h', iG, iG != i19, z6 ? 2 : 0);
        int iG3 = g(cArr, i14, 'm', iG2, iG2 != i19, z6 ? 2 : 0);
        int iG4 = g(cArr, i13, 's', iG3, iG3 != i19, z6 ? 2 : 0);
        int iG5 = g(cArr, i17, 'm', iG4, true, (!z6 || iG4 == i19) ? 0 : 3);
        cArr[iG5] = 's';
        return iG5 + 1;
    }

    private static int g(char[] cArr, int i10, char c7, int i11, boolean z6, int i12) {
        int i13;
        if (!z6 && i10 <= 0) {
            return i11;
        }
        if ((!z6 || i12 < 3) && i10 <= 99) {
            i13 = i11;
        } else {
            int i14 = i10 / 100;
            cArr[i11] = (char) (i14 + 48);
            i13 = i11 + 1;
            i10 -= i14 * 100;
        }
        if ((z6 && i12 >= 2) || i10 > 9 || i11 != i13) {
            int i15 = i10 / 10;
            cArr[i13] = (char) (i15 + 48);
            i13++;
            i10 -= i15 * 10;
        }
        cArr[i13] = (char) (i10 + 48);
        cArr[i13 + 1] = c7;
        return i13 + 2;
    }

    private TimeUtils() {
    }
}
