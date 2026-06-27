package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.Closeable;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1H, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1H {
    private static byte[] A00;
    private static final String A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A00 = new byte[]{42, 63, 61, 119, 93, 106, 106, 119, 106, 56, 123, 116, 119, 107, 113, 118, 127, 56, 106, 125, 107, 119, 109, 106, 123, 125, 31, 22, 103};
    }

    static {
        A04();
        A01 = C1H.class.getSimpleName();
    }

    private C1H() {
    }

    @Nullable
    public static String A01(String str) {
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

    public static String A02(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(A00(26, 3, 2));
            return A03(messageDigest.digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    private static String A03(byte[] bArr) {
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
                    stringBuffer.append(String.format(Locale.US, A00(0, 4, 95), Byte.valueOf(bArr[i])));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return stringBuffer.toString();
            }
        }
    }

    public static void A05(@Nullable Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.e(A01, A00(4, 22, 72), e);
            }
        }
    }
}
