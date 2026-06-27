package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
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
/* renamed from: com.facebook.ads.redexgen.X.4q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02724q implements InterfaceC02734r {
    private static byte[] A01;
    private final C3M A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_NO_STORAGE_SPACE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-41, -10, 8, -2, -8, -25, -6, 6, 10, -6, 8, 9, -35, -10, 3, -7, 1, -6, 7, -61, 4, 3, -38, 7, 7, 4, 7, -75, -4, 4, 9, -31, 3, 3, 5, 16, 20, -51, -29, 8, 1, 18, 19, 5, 20, 44, 88, 87, 93, 78, 87, 93, 22, 61, 98, 89, 78, -17, -18, -32, -57, -46};
    }

    public AbstractC02724q() {
        this(new C3H());
    }

    private AbstractC02724q(C3M c3m) {
        this.A00 = c3m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final boolean A5J(C02564a c02564a) {
        AbstractC02724q abstractC02724q = this;
        boolean z = false;
        C5e c5eA00 = c02564a.A00();
        char c = abstractC02724q.A00.A3y() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    abstractC02724q = abstractC02724q;
                    c02564a = c02564a;
                    abstractC02724q.A00.A47(A00(0, 31, 41));
                    c02564a.printStackTrace();
                    c = 3;
                    break;
                case 3:
                    c5eA00 = c5eA00;
                    if (c5eA00 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c5eA00 = c5eA00;
                    if (c5eA00.A3m() <= 0) {
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

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final HttpURLConnection A6R(String str) throws IOException {
        return (HttpURLConnection) new URL(str).openConnection();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final InputStream A6S(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getInputStream();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final OutputStream A6T(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final void A6b(HttpURLConnection httpURLConnection, EnumC02644i enumC02644i, String str) throws IOException {
        httpURLConnection.setRequestMethod(enumC02644i.A02());
        httpURLConnection.setDoOutput(enumC02644i.A04());
        httpURLConnection.setDoInput(enumC02644i.A03());
        if (str != null) {
            httpURLConnection.setRequestProperty(A00(45, 12, 125), str);
        }
        httpURLConnection.setRequestProperty(A00(31, 14, 52), A00(57, 5, 46));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
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

    @Override // com.facebook.ads.redexgen.X.InterfaceC02734r
    public final void A7K(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
    }
}
