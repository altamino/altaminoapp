package com.facebook.ads.redexgen.X;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class MO implements MN {
    private static byte[] A01;
    private final MU A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-46, -15, 3, -7, -13, -30, -11, 1, 5, -11, 3, 4, -40, -15, -2, -12, -4, -11, 2, -66, -1, -2, -43, 2, 2, -1, 2, -80, -9, -1, 4, -53, -19, -19, -17, -6, -2, -73, -51, -14, -21, -4, -3, -17, -2, -61, -17, -18, -12, -27, -18, -12, -83, -44, -7, -16, -27, -54, -55, -69, -94, -83};
    }

    public MO() {
        this(new MV());
    }

    private MO(MU mu) {
        this.A00 = mu;
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final boolean A5I(C0715Mb c0715Mb) {
        MO mo = this;
        boolean z = false;
        C0716Mc c0716McA00 = c0715Mb.A00();
        char c = mo.A00.A3y() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mo = mo;
                    c0715Mb = c0715Mb;
                    mo.A00.A47(A00(0, 31, 110));
                    c0715Mb.printStackTrace();
                    c = 3;
                    break;
                case 3:
                    c0716McA00 = c0716McA00;
                    if (c0716McA00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0716McA00 = c0716McA00;
                    if (c0716McA00.A00() <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final HttpURLConnection A6R(String str) throws IOException {
        return (HttpURLConnection) new URL(str).openConnection();
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final InputStream A6S(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getInputStream();
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final OutputStream A6T(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final void A6a(HttpURLConnection httpURLConnection, MZ mz, String str) throws IOException {
        httpURLConnection.setRequestMethod(mz.A02());
        httpURLConnection.setDoOutput(mz.A04());
        httpURLConnection.setDoInput(mz.A03());
        if (str != null) {
            httpURLConnection.setRequestProperty(A00(45, 12, 94), str);
        }
        httpURLConnection.setRequestProperty(A00(31, 14, 104), A00(57, 5, 83));
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final byte[] A6j(InputStream inputStream) throws IOException {
        int i = 0;
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int nRead = 2;
        while (true) {
            switch (nRead) {
                case 2:
                    inputStream = inputStream;
                    bArr = bArr;
                    i = inputStream.read(bArr);
                    if (i == -1) {
                        nRead = 4;
                        break;
                    } else {
                        nRead = 3;
                        break;
                    }
                case 3:
                    bArr = bArr;
                    byteArrayOutputStream = byteArrayOutputStream;
                    byteArrayOutputStream.write(bArr, 0, i);
                    nRead = 2;
                    break;
                case 4:
                    ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
                    byteArrayOutputStream2.flush();
                    return byteArrayOutputStream2.toByteArray();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.MN
    public final void A7K(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
    }
}
