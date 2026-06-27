package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NG implements NA {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{33};
    }

    private String A01(String str) {
        String strA00 = null;
        int iLastIndexOf = str.lastIndexOf(46);
        int iLastIndexOf2 = str.lastIndexOf(47);
        char c = iLastIndexOf != -1 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (iLastIndexOf <= iLastIndexOf2) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    if (iLastIndexOf + 2 + 4 <= str.length()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str;
                    strA00 = str.substring(iLastIndexOf + 1, str.length());
                    c = 5;
                    break;
                case 5:
                    return strA00;
                case 6:
                    strA00 = A00(1, 0, 44);
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.NA
    public final String A39(String str) throws NoSuchAlgorithmException {
        String strA01 = A01(str);
        String strA04 = N6.A04(str);
        return TextUtils.isEmpty(strA01) ? strA04 : strA04 + A00(0, 1, 53) + strA01;
    }
}
