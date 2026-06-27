package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0758Nt {
    private static byte[] A00;

    static {
        A05();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{82, 115, 60, 111, 105, 127, 116, 60, 125, 112, 123, 115, 110, 117, 104, 116, 113, 50, 64, 111, 106, 99, 38, 104, 105, 114, 38, 96, 105, 115, 104, 98, 38, 105, 116, 38, 104, 105, 114, 38, 103, 101, 101, 99, 117, 117, 111, 100, 106, 99, 40, 47, 41, 70, 3, 30, 5, 3, 22, 18, 15, 9, 8, 72, 52, 61, 76};
    }

    private C0758Nt() {
    }

    @Nullable
    private static String A01(File file) throws Exception {
        FileInputStream fileInputStream;
        int i;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(A00(64, 3, 98));
                    byte[] bArr = new byte[1024];
                    do {
                        i = fileInputStream.read(bArr);
                        if (i > 0) {
                            messageDigest.update(bArr, 0, i);
                        }
                    } while (i != -1);
                    return A04(messageDigest.digest());
                } catch (IOException unused) {
                    throw new Exception(A00(51, 13, 125));
                } catch (NoSuchAlgorithmException unused2) {
                    throw new Exception(A00(0, 18, 7));
                }
            } catch (FileNotFoundException unused3) {
                throw new Exception(A00(18, 33, 29));
            }
        } finally {
            try {
                fileInputStream.close();
            } catch (IOException unused4) {
            }
        }
    }

    @Nullable
    public static final String A02(String str) throws Exception {
        return A01(new File(str));
    }

    public static String A03(byte[] bArr) {
        int i = 0;
        int two_halfs = 0;
        char c = 0;
        byte b = 0;
        int i2 = 0;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        int i3 = 0;
        char c2 = 2;
        while (true) {
            switch (c2) {
                case 2:
                    if (i3 >= length) {
                        c2 = 11;
                        break;
                    } else {
                        c2 = 3;
                        break;
                    }
                case 3:
                    bArr = bArr;
                    b = bArr[i3];
                    two_halfs = (b >>> 4) & 15;
                    i2 = 0;
                    c2 = 4;
                    break;
                case 4:
                    if (two_halfs < 0) {
                        c2 = '\n';
                        break;
                    } else {
                        c2 = 5;
                        break;
                    }
                case 5:
                    if (two_halfs > 9) {
                        c2 = '\n';
                        break;
                    } else {
                        c2 = 6;
                        break;
                    }
                case 6:
                    c = (char) (two_halfs + 48);
                    c2 = 7;
                    break;
                case 7:
                    sb = sb;
                    sb.append(c);
                    two_halfs = b & 15;
                    i = i2 + 1;
                    if (i2 < 1) {
                        c2 = '\t';
                        break;
                    } else {
                        c2 = '\b';
                        break;
                    }
                case '\b':
                    i3++;
                    c2 = 2;
                    break;
                case '\t':
                    i2 = i;
                    c2 = 4;
                    break;
                case '\n':
                    c = (char) ((two_halfs - 10) + 97);
                    c2 = 7;
                    break;
                case 11:
                    return sb.toString();
            }
        }
    }

    private static String A04(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArr = bArr;
                    sb = sb;
                    sb.append(Integer.toString((bArr[i] & 255) + 256, 16).substring(1));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }
}
