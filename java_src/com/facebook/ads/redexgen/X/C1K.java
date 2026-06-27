package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.util.Log;
import com.narvii.model.User;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.Constants;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1K implements C1D {
    public static String A07;
    private static byte[] A08;
    private int A00;
    private InputStream A01;
    private HttpURLConnection A02;
    public final String A03;
    private volatile int A04;
    private volatile int A05;

    @Nullable
    private volatile String A06;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A08 = new byte[]{-8, 76, 71, -8, 31, 50, 46, 49, 54, 59, 52, -19, 64, 60, 66, 63, 48, 50, -19, -77, -32, -32, -35, -32, -114, -46, -41, -31, -47, -35, -36, -36, -45, -47, -30, -41, -36, -43, -114, -74, -30, -30, -34, -61, -32, -38, -79, -35, -36, -36, -45, -47, -30, -41, -35, -36, -91, -18, -8, -91, -18, -13, -7, -22, -9, -9, -6, -11, -7, -22, -23, -57, -12, -12, -15, -12, -94, -12, -25, -29, -26, -21, -16, -23, -94, -26, -29, -10, -29, -94, -24, -12, -15, -17, -94, -63, -30, -41, -32, -110, -43, -31, -32, -32, -41, -43, -26, -37, -31, -32, -110, -25, -6, -10, -7, -75, -8, 4, 3, 9, -6, 3, 9, -75, -2, 3, -5, 4, -75, -5, 7, 4, 2, -75, -18, 26, 26, 22, -5, 24, 18, -7, 21, 27, 24, 9, 11, 33, 27, 24, 18, -29, -51, -49, -61, 6, 18, 17, 23, 8, 17, 23, -48, 15, 8, 17, 10, 23, 11, -35, -61, -51, -6, -6, -9, -6, -88, -18, -19, -4, -21, -16, -15, -10, -17, -88, -15, -10, -18, -9, -88, -18, -6, -9, -11, -88, -56, -33, -38, -53, -39, -93, -48, -86, -112, -35, -39, -35, -43, -86, -112, -35, -65, -50, -37, -44, -46, -82, -108, -41, -29, -30, -30, -39, -41, -24, -35, -29, -30, -108, -35, -25, -108, -43, -42, -25, -39, -30, -24, -107, 94, -83, 4, -10, 1, -11, -83, -4, -13, -13, 0, -14, 1, -83, -83, -39, -40, -34, -49, -40, -34, -118, -45, -40, -48, -39, -118, -48, -39, -36, -118, -54, -6, 29, 17, 15, 34, 23, 29, 28, 12, 57, 57, 54, 57, -25, 54, 55, 44, 53, 48, 53, 46, -25, 42, 54, 53, 53, 44, 42, 59, 48, 54, 53, -25, 45, 54, 57, -25, -9, 18, 18, -61, 16, 4, 17, 28, -61, 21, 8, 7, 12, 21, 8, 6, 23, 22, -35, -61};
    }

    static {
        A04();
        A07 = C1K.class.getSimpleName();
    }

    private C1K(String str) {
        this(str, C1H.A01(str));
    }

    public C1K(String str, int i) {
        this(str);
        this.A00 = i;
    }

    private C1K(String str, @Nullable String str2) {
        this.A05 = Integer.MIN_VALUE;
        this.A00 = -1;
        this.A03 = (String) C1M.A00(str);
        this.A06 = str2;
    }

    private int A00(HttpURLConnection httpURLConnection, int i, int i2) throws IOException {
        C1K c1k = this;
        int contentLength = httpURLConnection.getContentLength();
        char c = i2 == 200 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return contentLength;
                case 3:
                    if (i2 != 206) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    contentLength += i;
                    c = 2;
                    break;
                case 5:
                    c1k = c1k;
                    contentLength = c1k.A05;
                    c = 2;
                    break;
            }
        }
    }

    private HttpURLConnection A02(int i, int redirectCount) throws C1I, IOException {
        C1K c1k = this;
        StringBuilder sbAppend = null;
        String strA01 = null;
        HttpURLConnection httpURLConnection = null;
        boolean z = false;
        int responseCode = 0;
        int i2 = 0;
        String headerField = c1k.A03;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    StringBuilder sb = new StringBuilder();
                    String url = A01(95, 16, 13);
                    sbAppend = sb.append(url);
                    if (i <= 0) {
                        c = 19;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA01 = A01(241, 13, 40) + i;
                    c = 4;
                    break;
                case 4:
                    headerField = headerField;
                    sbAppend = sbAppend;
                    strA01 = strA01;
                    sbAppend.append(strA01).append(A01(0, 4, 115)).append(headerField).toString();
                    httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
                    if (i <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    httpURLConnection = httpURLConnection;
                    httpURLConnection.setRequestProperty(A01(212, 5, 8), A01(196, 6, 1) + i + A01(211, 1, 75));
                    c = 6;
                    break;
                case 6:
                    if (redirectCount <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    httpURLConnection = httpURLConnection;
                    httpURLConnection.setConnectTimeout(redirectCount);
                    httpURLConnection.setReadTimeout(redirectCount);
                    c = '\b';
                    break;
                case '\b':
                    c1k = c1k;
                    httpURLConnection = httpURLConnection;
                    responseCode = httpURLConnection.getResponseCode();
                    c1k.A04 = responseCode;
                    if (responseCode == 301) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (responseCode == 302) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (responseCode != 303) {
                        c = 18;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    z = true;
                    c = '\f';
                    break;
                case '\f':
                    if (!z) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    httpURLConnection = httpURLConnection;
                    headerField = httpURLConnection.getHeaderField(A01(272, 8, 73));
                    i2++;
                    httpURLConnection.disconnect();
                    c = 14;
                    break;
                case 14:
                    if (i2 <= 5) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    StringBuilder sb2 = new StringBuilder();
                    String url2 = A01(309, 20, 62);
                    throw new C1I(sb2.append(url2).append(i2).toString());
                case 16:
                    if (!z) {
                        c = 17;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 17:
                    return httpURLConnection;
                case 18:
                    z = false;
                    c = '\f';
                    break;
                case 19:
                    strA01 = A01(212, 0, 84);
                    c = 4;
                    break;
            }
        }
    }

    private void A03() throws C1I, IOException {
        String str = A01(111, 23, 48) + this.A03;
        HttpURLConnection httpURLConnectionA02 = null;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnectionA02 = A02(0, 10000);
                this.A05 = httpURLConnectionA02.getContentLength();
                this.A06 = httpURLConnectionA02.getContentType();
                inputStream = httpURLConnectionA02.getInputStream();
                String str2 = A01(User.USER_ROLE_SYSTEM, 18, 5) + this.A03 + A01(202, 9, 11) + this.A06 + A01(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 18, 62) + this.A05;
                C1H.A05(inputStream);
                if (httpURLConnectionA02 != null) {
                    httpURLConnectionA02.disconnect();
                }
            } catch (IOException e) {
                Log.e(A07, A01(171, 25, 35) + this.A03, e);
                C1H.A05(inputStream);
                if (httpURLConnectionA02 != null) {
                    httpURLConnectionA02.disconnect();
                }
            }
        } catch (Throwable th) {
            C1H.A05(inputStream);
            if (httpURLConnectionA02 != null) {
                httpURLConnectionA02.disconnect();
            }
            throw th;
        }
    }

    private final void A05(int i, int i2) throws C1I {
        try {
            this.A02 = A02(i, i2);
            this.A06 = this.A02.getContentType();
            this.A01 = new BufferedInputStream(this.A02.getInputStream(), 8192);
            this.A05 = A00(this.A02, i, this.A02.getResponseCode());
        } catch (IOException e) {
            throw new C1I(A01(280, 29, 98) + this.A03 + A01(241, 13, 40) + i, e);
        }
    }

    public final int A06() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.C1D
    public final void A6Q(int i) throws C1I {
        A05(i, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.C1D
    public final void close() throws C1I {
        if (this.A02 != null) {
            try {
                this.A02.disconnect();
            } catch (NullPointerException e) {
                throw new C1I(A01(19, 37, 9), e);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1D
    public final synchronized int length() throws C1I {
        if (this.A05 == Integer.MIN_VALUE) {
            A03();
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.C1D
    public final int read(byte[] bArr) throws C1I {
        if (this.A01 == null) {
            throw new C1I(A01(71, 24, 29) + this.A03 + A01(217, 23, 15));
        }
        try {
            return this.A01.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            final String str = A01(4, 15, 104) + this.A03 + A01(56, 15, 32);
            throw new C1I(str, e) { // from class: com.facebook.ads.redexgen.X.1L
            };
        } catch (IOException e2) {
            throw new C1I(A01(71, 24, 29) + this.A03, e2);
        }
    }

    public final String toString() {
        return A01(134, 19, 65) + this.A03 + A01(240, 1, 124);
    }
}
