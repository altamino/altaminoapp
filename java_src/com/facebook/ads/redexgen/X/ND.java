package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
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
/* loaded from: assets/assets/audience_network.dex */
public final class ND {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_BAD_REQUEST);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{35, 72, 81, 68, 66, 83, 78, 81, 88, -1, 4, 82, -1, 66, 64, 77, 6, 83, -1, 65, 68, -1, 66, 81, 68, 64, 83, 68, 67, 17, 62, 62, 59, 62, -20, 62, 49, 47, 62, 49, 45, 64, 49, -20, 70, 49, 62, 59, -7, 63, 53, 70, 49, -20, 50, 53, 56, 49, -20, 4, 77, 87, 4, 82, 83, 88, 4, 72, 77, 86, 73, 71, 88, 83, 86, 93, 5, 19, 54, 57, 50, -19, 56, 101, 101, 98, 101, 19, 102, 88, 103, 19, 95, 84, 102, 103, 19, 96, 98, 87, 92, 89, 92, 88, 87, 19, 87, 84, 103, 88, 19, 103, 98, 19, -16, -11, -30};
    }

    private ND() {
    }

    public static List<File> A01(File file) {
        List<File> result = new LinkedList<>();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            List<File> result2 = Arrays.asList(fileArrListFiles);
            Collections.sort(result2, new NC());
            return result2;
        }
        return result;
    }

    public static void A03(File file) throws IOException {
        char c = file.exists() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.isDirectory()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    throw new IOException(A00(77, 5, 89) + file + A00(59, 18, 112));
                case 4:
                    file = file;
                    if (!file.mkdirs()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    throw new IOException(String.format(Locale.US, A00(0, 29, 107), file.getAbsolutePath()));
                case 6:
                    return;
            }
        }
    }

    public static void A04(File file) throws IOException {
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
                    A05(file);
                    if (file.lastModified() >= jCurrentTimeMillis) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    throw new IOException(A00(82, 32, 127) + file);
                case 5:
                    return;
            }
        }
    }

    private static void A05(File file) throws IOException {
        long length = file.length();
        byte lastByte = length == 0 ? (byte) 2 : (byte) 4;
        while (true) {
            switch (lastByte) {
                case 2:
                    file = file;
                    A06(file);
                    lastByte = 3;
                    break;
                case 3:
                    return;
                case 4:
                    file = file;
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, A00(114, 3, 10));
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

    private static void A06(File file) throws IOException {
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
                    throw new IOException(A00(29, 30, 88) + file);
                case 4:
                    return;
            }
        }
    }
}
