package org.bouncycastle.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes5.dex */
public final class h {
    private static String LINE_SEPARATOR;

    static class a implements PrivilegedAction<String> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String run() {
            return System.getProperty("line.separator");
        }
    }

    static {
        try {
            try {
                LINE_SEPARATOR = (String) AccessController.doPrivileged(new a());
            } catch (Exception unused) {
                LINE_SEPARATOR = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            LINE_SEPARATOR = "\n";
        }
    }

    public static char[] a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 != length; i10++) {
            cArr[i10] = (char) (bArr[i10] & 255);
        }
        return cArr;
    }

    public static String b(byte[] bArr) {
        return new String(a(bArr));
    }

    public static String c(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int iB = org.bouncycastle.util.encoders.h.b(bArr, cArr);
        if (iB >= 0) {
            return new String(cArr, 0, iB);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String d() {
        return LINE_SEPARATOR;
    }

    public static byte[] e(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) str.charAt(i10);
        }
        return bArr;
    }

    public static String f(String str) {
        char[] charArray = str.toCharArray();
        boolean z6 = false;
        for (int i10 = 0; i10 != charArray.length; i10++) {
            char c7 = charArray[i10];
            if ('A' <= c7 && 'Z' >= c7) {
                charArray[i10] = (char) (c7 + ' ');
                z6 = true;
            }
        }
        return z6 ? new String(charArray) : str;
    }

    public static void g(char[] cArr, OutputStream outputStream) throws IOException {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        while (i13 < cArr.length) {
            char c7 = cArr[i13];
            if (c7 >= 128) {
                if (c7 < 2048) {
                    i10 = c7;
                    i11 = (c7 >> 6) | 192;
                } else {
                    if (c7 < 55296 || c7 > 57343) {
                        i10 = c7;
                        i10 = c7;
                        outputStream.write((c7 >> '\f') | 224);
                        i11 = ((c7 >> 6) & 63) | 128;
                    } else {
                        i13++;
                        if (i13 >= cArr.length) {
                            i10 = c7;
                            throw new IllegalStateException("invalid UTF-16 codepoint");
                        }
                        char c10 = cArr[i13];
                        if (c7 > 56319) {
                            i10 = c7;
                            throw new IllegalStateException("invalid UTF-16 codepoint");
                        }
                        i10 = c7;
                        int i14 = (((c7 & 1023) << 10) | (c10 & 1023)) + 65536;
                        outputStream.write((i14 >> 18) | 240);
                        outputStream.write(((i14 >> 12) & 63) | 128);
                        outputStream.write(((i14 >> 6) & 63) | 128);
                        i12 = i14;
                    }
                    i10 = (i12 & 63) | 128;
                }
                outputStream.write(i11);
                i12 = c7;
                i10 = (i12 & 63) | 128;
            }
            i10 = c7;
            outputStream.write(i10);
            i13++;
        }
    }

    public static byte[] h(String str) {
        return i(str.toCharArray());
    }

    public static byte[] i(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            g(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }
}
