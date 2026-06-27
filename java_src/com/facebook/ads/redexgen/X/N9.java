package com.facebook.ads.redexgen.X;

import com.narvii.model.User;
import com.narvii.util.Constants;
import com.tonyodev.fetch.FetchService;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class N9 implements Mg {
    private static byte[] A03;
    public File A00;
    private RandomAccessFile A01;
    private final N8 A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{82, -109, -91, 82, -106, -101, -91, -107, 82, -107, -109, -107, -102, -105, 95, -77, -82, 95, -83, -13, -4, -1, -83, -16, -4, -6, -3, -7, -14, 1, -10, -4, -5, -82, -106, -61, -61, -64, -61, 113, -61, -74, -78, -75, -70, -65, -72, 113, 118, -75, 113, -77, -54, -59, -74, -60, 113, -56, -70, -59, -71, 113, -64, -73, -73, -60, -74, -59, 113, 118, -75, 113, -73, -61, -64, -66, 113, -73, -70, -67, -74, -84, 118, -75, 113, -77, -54, -59, -74, -60, -82, 113, -59, -64, 113, -77, -58, -73, -73, -74, -61, -84, 118, -75, 113, -77, -54, -59, -74, -60, -82, -93, -20, -10, -93, -26, -14, -16, -13, -17, -24, -9, -24, -25, -92, -43, 2, 2, -1, 2, -80, 2, -11, -15, -12, -7, -2, -9, -80, -4, -11, -2, -9, 4, -8, -80, -1, -10, -80, -10, -7, -4, -11, -80, -34, 11, 11, 8, 11, -71, 16, 11, 2, 13, 2, 7, 0, -71, -66, -3, -71, -5, 18, 13, -2, 12, -71, 13, 8, -71, -66, 12, -71, -1, 11, 8, 6, -71, -5, 14, -1, -1, -2, 11, -71, 16, 2, 13, 1, -71, 12, 2, 19, -2, -71, -66, -3, 119, -92, -92, -95, -92, 82, -89, -91, -101, -96, -103, 82, -104, -101, -98, -105, 82, -46, -16, -3, -74, 3, -81, -14, -5, -12, -16, -3, -81, -11, -8, -5, -12, -46, -1, -1, -4, -1, -83, -4, -3, -14, -5, -10, -5, -12, -83, -12, -84, -30, -19, -11, -20, -22, -19, -33, -30, 109, -102, -102, -105, -102, 72, -117, -108, -105, -101, -111, -106, -113, 72, -114, -111, -108, -115, 72, -45, 0, 0, -3, 0, -82, -17, -2, -2, -13, -4, -14, -82, -15, -17, -15, -10, -13, -56, -82, -15, -17, -15, -10, -13, -82, -12, -9, -6, -13, -82, -47, -42, 103, -108, -108, -111, -108, 66, -108, -121, -112, -125, -113, -117, -112, -119, 66, -120, -117, -114, -121, 66};
    }

    public N9(File directory, N8 n8) throws C0725Mm {
        try {
            if (n8 == null) {
                throw new NullPointerException();
            }
            this.A02 = n8;
            ND.A03(directory.getParentFile());
            boolean zExists = directory.exists();
            this.A00 = zExists ? directory : new File(directory.getParentFile(), directory.getName() + A00(255, 9, 97));
            this.A01 = new RandomAccessFile(this.A00, zExists ? A00(User.USER_ROLE_SYSTEM, 1, 101) : A00(FetchService.ACTION_NETWORK, 2, 66));
        } catch (IOException e) {
            throw new C0725Mm(A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 17, 21) + directory + A00(0, 14, 21), e);
        }
    }

    private boolean A02(File file) {
        return file.getName().endsWith(A00(255, 9, 97));
    }

    public final File A03() {
        return this.A00;
    }

    public final synchronized void A04() throws C0725Mm {
        try {
            this.A01.setLength(0L);
        } catch (IOException e) {
            throw new C0725Mm(A00(224, 16, 114), e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized void A2b(byte[] bArr, int i) throws C0725Mm {
        try {
            if (A3u()) {
                throw new C0725Mm(A00(283, 31, 113) + this.A00 + A00(111, 14, 102));
            }
            this.A01.seek(available());
            this.A01.write(bArr, 0, i);
        } catch (IOException e) {
            throw new C0725Mm(String.format(Locale.US, A00(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 53, 124), Integer.valueOf(i), this.A01, Integer.valueOf(bArr.length)), e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized void A2n() throws C0725Mm {
        if (!A3u()) {
            close();
            File file = new File(this.A00.getParentFile(), this.A00.getName().substring(0, this.A00.getName().length() - A00(255, 9, 97).length()));
            if (!this.A00.renameTo(file)) {
                StringBuilder sb = new StringBuilder();
                String fileName = A00(FetchService.ACTION_QUERY, 20, 5);
                StringBuilder sbAppend = sb.append(fileName).append(this.A00);
                String fileName2 = A00(14, 4, 34);
                StringBuilder sbAppend2 = sbAppend.append(fileName2).append(file);
                String fileName3 = A00(18, 16, 112);
                throw new C0725Mm(sbAppend2.append(fileName3).toString());
            }
            this.A00 = file;
            try {
                File file2 = this.A00;
                String fileName4 = A00(User.USER_ROLE_SYSTEM, 1, 101);
                this.A01 = new RandomAccessFile(file2, fileName4);
            } catch (IOException e) {
                throw new C0725Mm(A00(240, 14, 112) + this.A00 + A00(0, 14, 21), e);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized boolean A3u() {
        return !A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized int A6i(byte[] bArr, long j, int i) throws C0725Mm {
        try {
            this.A01.seek(j);
        } catch (IOException e) {
            throw new C0725Mm(String.format(Locale.US, A00(34, 77, 52), Integer.valueOf(i), Long.valueOf(j), Integer.valueOf(available()), Integer.valueOf(bArr.length)), e);
        }
        return this.A01.read(bArr, 0, i);
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized int available() throws C0725Mm {
        try {
        } catch (IOException e) {
            throw new C0725Mm(A00(125, 29, 115) + this.A00, e);
        }
        return (int) this.A01.length();
    }

    @Override // com.facebook.ads.redexgen.X.Mg
    public final synchronized void close() throws C0725Mm {
        try {
            this.A01.close();
            this.A02.A7B(this.A00);
        } catch (IOException e) {
            throw new C0725Mm(A00(264, 19, 11) + this.A00, e);
        }
    }
}
