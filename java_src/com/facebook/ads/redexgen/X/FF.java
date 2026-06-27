package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Base64;
import com.tonyodev.fetch.FetchConst;
import java.io.File;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FF {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{48, 85, 93, 72, 83, 80, 75, 7, 48, 61, -46, -47, -46, 5, 47, 50, 58, 41, 44, 54, 43, -21, 19, 22, 26, 31, -58, -17, 20, 22, 27, 26, 41, 78, 86, 65, 76, 73, 68, 0, 44, 69, 78, 71, 84, 72, 13, 45, 18, 57, 48, 48, -28, 6, 8, -28, 23, 41, 55, 55, 45, 51, 50, -28, 13, 40, 103, 105, 28, 23, 15, 31, 1, 28, 45, 48, 48, 53, 58, 51};
    }

    private FF() {
    }

    @SuppressLint({"CatchGeneralException", "BadMethodUse-java.lang.String.length", "TrulyRandom"})
    public static String A01(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                if (!str.isEmpty() && !str2.isEmpty()) {
                    Cipher cipher = Cipher.getInstance(A00(13, 8, 86) + File.separatorChar + A00(10, 3, 34) + File.separatorChar + A00(68, 12, 95));
                    String[] strArrSplit = str2.split(A00(46, 2, 68));
                    if (strArrSplit == null || strArrSplit.length == 0) {
                        throw new NullPointerException(A00(48, 18, 87));
                    }
                    String str3 = strArrSplit[strArrSplit.length - 1];
                    SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), A00(13, 8, 86));
                    int length = str3.length();
                    if (length != 16) {
                        throw new InvalidParameterSpecException(A00(32, 14, 115));
                    }
                    int saltLength = length / 2;
                    byte[] bytes = str3.substring(0, saltLength).getBytes();
                    int saltLength2 = length / 2;
                    byte[] ivBytes = A03(bytes, str3.substring(saltLength2, length).getBytes());
                    cipher.init(1, secretKeySpec, new IvParameterSpec(ivBytes));
                    return Base64.encodeToString(cipher.doFinal(str.getBytes()), 0);
                }
            } catch (Throwable t) {
                BC.A03(t);
                return A00(66, 2, 127);
            }
        }
        throw new NullPointerException(A00(21, 11, 57));
    }

    private static byte[] A03(byte[] bArr, byte[] result) throws NullPointerException {
        int i = 0;
        byte[] bArr2 = null;
        char c = bArr != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    result = result;
                    if (result == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArr = bArr;
                    result = result;
                    if (bArr.length == result.length) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new NullPointerException(A00(0, 10, 122));
                case 5:
                    bArr = bArr;
                    bArr2 = new byte[bArr.length];
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    bArr = bArr;
                    if (i >= bArr.length) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    bArr = bArr;
                    result = result;
                    bArr2 = bArr2;
                    bArr2[i] = (byte) (bArr[i] ^ result[i]);
                    i++;
                    c = 6;
                    break;
                case '\b':
                    return bArr2;
            }
        }
    }
}
