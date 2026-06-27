package com.facebook.ads.redexgen.X;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.19, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass19 {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{9, 36, 63, 40, 46, 57, 34, 63, 52, 109, 104, 62, 109, 46, 44, 35, 106, 57, 109, 47, 40, 109, 46, 63, 40, 44, 57, 40, 41, 88, 111, 111, 114, 111, 61, 111, 120, 126, 111, 120, 124, 105, 120, 61, 103, 120, 111, 114, 48, 110, 116, 103, 120, 61, 123, 116, 113, 120, 61, 126, 55, 45, 126, 48, 49, 42, 126, 58, 55, 44, 59, 61, 42, 49, 44, 39, 127, 97, 78, 75, 66, 7, 55, 0, 0, 29, 0, 82, 1, 23, 6, 82, 30, 19, 1, 6, 82, 31, 29, 22, 27, 20, 27, 23, 22, 82, 22, 19, 6, 23, 82, 6, 29, 82, 66, 71, 84};
    }

    private AnonymousClass19() {
    }

    public static List<File> A01(File file) {
        List<File> result = new LinkedList<>();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            List<File> result2 = Arrays.asList(fileArrListFiles);
            Collections.sort(result2, new AnonymousClass18());
            return result2;
        }
        return result;
    }

    public static void A03(File file) throws IOException {
        long jCurrentTimeMillis = 0;
        char c = file.exists() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (!file.setLastModified(jCurrentTimeMillis)) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    file = file;
                    A04(file);
                    if (file.lastModified() >= jCurrentTimeMillis) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new IOException(A00(82, 32, 71) + file);
                case 5:
                    return;
            }
        }
    }

    private static void A04(File file) throws IOException {
        long length = file.length();
        byte lastByte = length == 0 ? (byte) 2 : (byte) 4;
        while (true) {
            switch (lastByte) {
                case 2:
                    file = file;
                    A05(file);
                    lastByte = 3;
                    break;
                case 3:
                    return;
                case 4:
                    file = file;
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, A00(114, 3, 5));
                    randomAccessFile.seek(length - 1);
                    byte b = randomAccessFile.readByte();
                    randomAccessFile.seek(length - 1);
                    randomAccessFile.write(b);
                    randomAccessFile.close();
                    lastByte = 3;
                    break;
            }
        }
    }

    private static void A05(File file) throws IOException {
        char c = file.delete() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.createNewFile()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    throw new IOException(A00(29, 30, 40) + file);
                case 4:
                    return;
            }
        }
    }

    public static synchronized void A06(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new IOException(A00(77, 5, 18) + file + A00(59, 18, 107));
            }
        } else if (!file.mkdirs()) {
            throw new IOException(String.format(Locale.US, A00(0, 29, 120), file.getAbsolutePath()));
        }
    }
}
