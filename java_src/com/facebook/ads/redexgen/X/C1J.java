package com.facebook.ads.redexgen.X;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1J, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1J implements C1F {
    private static byte[] A03;
    public File A00;
    private RandomAccessFile A01;
    private final AnonymousClass16 A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{-99, -34, -16, -99, -31, -26, -16, -32, -99, -32, -34, -32, -27, -30, 110, -62, -67, 110, -126, -56, -47, -44, -126, -59, -47, -49, -46, -50, -57, -42, -53, -47, -48, -125, 83, -100, -90, 83, -106, -94, -96, -93, -97, -104, -89, -104, -105, 84, -104, -59, -59, -62, -59, 115, -59, -72, -76, -73, -68, -63, -70, 115, -65, -72, -63, -70, -57, -69, 115, -62, -71, 115, -71, -68, -65, -72, 115, -65, -20, -20, -23, -20, -102, -15, -20, -29, -18, -29, -24, -31, -102, -97, -34, -102, -36, -13, -18, -33, -19, -102, -18, -23, -102, -97, -19, -102, -32, -20, -23, -25, -102, -36, -17, -32, -32, -33, -20, -102, -15, -29, -18, -30, -102, -19, -29, -12, -33, -102, -97, -34, -74, -29, -29, -32, -29, -111, -26, -28, -38, -33, -40, -111, -41, -38, -35, -42, -111, -102, -72, -59, 126, -53, 119, -70, -61, -68, -72, -59, 119, -67, -64, -61, -68, 122, -89, -89, -92, -89, 85, -92, -91, -102, -93, -98, -93, -100, 85, -79, 113, -89, -78, -70, -79, -81, -78, -92, -89, -20, 25, 25, 22, 25, -57, 10, 19, 22, 26, 16, 21, 14, -57, 13, 16, 19, 12, -57, -20, 25, 25, 22, 25, -57, 8, 23, 23, 12, 21, 11, -57, 10, 8, 10, 15, 12, -31, -57, 10, 8, 10, 15, 12, -57, 13, 16, 19, 12, -57, 21, 26, -69, -24, -24, -27, -24, -106, -24, -37, -28, -41, -29, -33, -28, -35, -106, -36, -33, -30, -37, -106};
    }

    public C1J(File directory, AnonymousClass16 anonymousClass16) throws C1N {
        try {
            if (anonymousClass16 == null) {
                throw new NullPointerException();
            }
            this.A02 = anonymousClass16;
            AnonymousClass19.A06(directory.getParentFile());
            boolean zExists = directory.exists();
            this.A00 = zExists ? directory : new File(directory.getParentFile(), directory.getName() + A00(178, 9, 20));
            this.A01 = new RandomAccessFile(this.A00, zExists ? A00(177, 1, 16) : A00(237, 2, 116));
        } catch (IOException e) {
            throw new C1N(A00(130, 17, 66) + directory + A00(0, 14, 78), e);
        }
    }

    private boolean A02(File file) {
        return file.getName().endsWith(A00(178, 9, 20));
    }

    public final synchronized int A03() throws C1N {
        try {
        } catch (IOException e) {
            throw new C1N(A00(48, 29, 36) + this.A00, e);
        }
        return (int) this.A01.length();
    }

    public final File A04() {
        return this.A00;
    }

    public final synchronized void A05() throws C1N {
        try {
            this.A01.setLength(0L);
        } catch (IOException e) {
            throw new C1N(A00(147, 16, 40), e);
        }
    }

    public final synchronized void A06() throws C1N {
        try {
            this.A01.close();
            this.A02.A7B(this.A00);
        } catch (IOException e) {
            throw new C1N(A00(187, 19, 120) + this.A00, e);
        }
    }

    public final synchronized void A07() throws C1N {
        if (!A09()) {
            A06();
            File file = new File(this.A00.getParentFile(), this.A00.getName().substring(0, this.A00.getName().length() - A00(178, 9, 20).length()));
            if (!this.A00.renameTo(file)) {
                StringBuilder sb = new StringBuilder();
                String fileName = A00(239, 20, 71);
                StringBuilder sbAppend = sb.append(fileName).append(this.A00);
                String fileName2 = A00(14, 4, 31);
                StringBuilder sbAppend2 = sbAppend.append(fileName2).append(file);
                String fileName3 = A00(18, 16, 51);
                throw new C1N(sbAppend2.append(fileName3).toString());
            }
            this.A00 = file;
            try {
                File file2 = this.A00;
                String fileName4 = A00(177, 1, 16);
                this.A01 = new RandomAccessFile(file2, fileName4);
            } catch (IOException e) {
                throw new C1N(A00(163, 14, 6) + this.A00 + A00(0, 14, 78), e);
            }
        }
    }

    public final synchronized void A08(byte[] bArr, int i) throws C1N {
        try {
            if (A09()) {
                throw new C1N(A00(206, 31, 120) + this.A00 + A00(34, 14, 4));
            }
            this.A01.seek(A03());
            this.A01.write(bArr, 0, i);
        } catch (IOException e) {
            throw new C1N(String.format(Locale.US, A00(77, 53, 75), Integer.valueOf(i), this.A01, Integer.valueOf(bArr.length)), e);
        }
    }

    public final synchronized boolean A09() {
        return !A02(this.A00);
    }
}
