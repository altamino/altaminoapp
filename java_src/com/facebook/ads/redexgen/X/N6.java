package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class N6 {
    private static byte[] A00;

    static {
        A06();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A00 = new byte[]{89, 110, 110, 115, 110, 60, 121, 114, 127, 115, 120, 117, 114, 123, 60, 105, 110, 112, 102, 115, 113, 59, 35, 1, 28, 11, 10, 48, 18, 16, 27, 22, 76, 101, 110, 103, 116, 104, 32, 109, 117, 115, 116, 32, 98, 101, 32, 105, 110, 32, 114, 97, 110, 103, 101, 32, 91, 48, 46, 46, 98, 117, 102, 102, 101, 114, 46, 108, 101, 110, 103, 116, 104, 93, 84, 85, 71, 12, 25, 34, 21, 21, 8, 21, 71, 3, 2, 4, 8, 3, 14, 9, 0, 71, 18, 21, 11, 63, 8, 8, 21, 8, 90, 25, 22, 21, 9, 19, 20, 29, 90, 8, 31, 9, 21, 15, 8, 25, 31, 1, 54, 37, 37, 38, 49, 99, 46, 54, 48, 55, 99, 33, 38, 99, 45, 44, 55, 99, 45, 54, 47, 47, 98, 60, 53, 68, 71, 98, 119, 98, 35, 108, 101, 101, 112, 102, 119, 35, 110, 118, 112, 119, 35, 97, 102, 35, 115, 108, 112, 106, 119, 106, 117, 102, 34};
    }

    private N6() {
    }

    public static String A01(String str) {
        try {
            return URLDecoder.decode(str, A00(74, 5, 105));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(A00(79, 18, 47), e);
        }
    }

    public static String A02(String str) {
        try {
            return URLEncoder.encode(str, A00(74, 5, 105));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(A00(0, 18, 84), e);
        }
    }

    public static String A03(String str) {
        String mimeTypeFromExtension = null;
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        char c = TextUtils.isEmpty(fileExtensionFromUrl) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    mimeTypeFromExtension = null;
                    c = 3;
                    break;
                case 3:
                    return mimeTypeFromExtension;
                case 4:
                    singleton = singleton;
                    fileExtensionFromUrl = fileExtensionFromUrl;
                    mimeTypeFromExtension = singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
                    c = 3;
                    break;
            }
        }
    }

    public static String A04(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(A00(143, 3, 57));
            return A05(messageDigest.digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    private static String A05(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
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
                    stringBuffer = stringBuffer;
                    stringBuffer.append(String.format(Locale.US, A00(18, 4, 11), Byte.valueOf(bArr[i])));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return stringBuffer.toString();
            }
        }
    }

    public static void A07(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.e(A00(22, 10, 59), A00(97, 22, 50), e);
            }
        }
    }

    public static void A08(byte[] bArr, long j, int i) {
        boolean z = false;
        boolean z2 = true;
        N3.A01(bArr, A00(119, 24, 11));
        char c = j >= 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    z = z2;
                    c = 3;
                    break;
                case 3:
                    N3.A02(z, A00(146, 29, 75));
                    if (i < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    bArr = bArr;
                    if (i > bArr.length) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    N3.A02(z2, A00(32, 42, 72));
                    return;
                case 6:
                    z2 = false;
                    c = 5;
                    break;
                case 7:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
