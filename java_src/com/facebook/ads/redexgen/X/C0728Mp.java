package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0728Mp {
    private static byte[] A03;
    private static final Pattern A04;
    private static final Pattern A05;
    public final long A00;
    public final String A01;
    public final boolean A02;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A03 = new byte[]{-14, -16, -1, -53, -38, -45, -39, -43, -44, -53, -13, -1, -1, -5, -33, -42, -80, -10, -31, -27, -14, -21, -23, -66, -33, -92, -31, -61, -26, -3, -8, -23, -9, -63, -84, -32, -24, -82, -83, -79, -41, -79, -105, -20, -23, -29, -105, -27, -26, -21, -105, -35, -26, -20, -27, -37, -104, 3, -9, 71, 56, 73, 75, 64, 56, 67, 20, -85, -48, -40, -61, -50, -53, -58, -126, -44, -57, -45, -41, -57, -43, -42, -126, -62, -95, -65, -50, -84, -65, -53, -49, -65, -51, -50, -43, -52, -69, -56, -63, -65, -87, -64, -64, -51, -65, -50, -105, -76, -88, -3, -6, -15, -59, -81, -69, -70, -84, -109, -98};
    }

    static {
        A04();
        A04 = Pattern.compile(A02(14, 26, 44));
        A05 = Pattern.compile(A02(0, 14, 83));
    }

    private C0728Mp(String str) throws NumberFormatException {
        N3.A00(str);
        long jA00 = A00(str);
        this.A00 = Math.max(0L, jA00);
        this.A02 = jA00 >= 0;
        this.A01 = A03(str);
    }

    private long A00(String str) throws NumberFormatException {
        long j = 0;
        Matcher matcher = A04.matcher(str);
        char c = matcher.find() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    matcher = matcher;
                    j = Long.parseLong(matcher.group(1));
                    c = 3;
                    break;
                case 3:
                    return j;
                case 4:
                    j = -1;
                    c = 3;
                    break;
            }
        }
    }

    public static C0728Mp A01(InputStream inputStream) throws IOException {
        String line = null;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, A02(114, 5, 14)));
        StringBuilder sb = new StringBuilder();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bufferedReader = bufferedReader;
                    line = bufferedReader.readLine();
                    if (!TextUtils.isEmpty(line)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    sb = sb;
                    line = line;
                    sb.append(line).append('\n');
                    c = 2;
                    break;
                case 4:
                    return new C0728Mp(sb.toString());
            }
        }
    }

    private String A03(String str) {
        Matcher matcher = A05.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException(A02(67, 17, 10) + str + A02(40, 17, 31));
    }

    public final String toString() {
        return A02(84, 23, 2) + this.A00 + A02(57, 10, 127) + this.A02 + A02(107, 7, 48) + this.A01 + "'}";
    }
}
