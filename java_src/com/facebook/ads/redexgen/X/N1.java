package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.tonyodev.fetch.FetchService;
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
/* loaded from: assets/assets/audience_network.dex */
public final class N1 implements InterfaceC0721Mi {
    private static byte[] A06;
    private int A00;
    private InputStream A01;
    private HttpURLConnection A02;
    public final String A03;
    private volatile int A04;
    private volatile String A05;

    static {
        A04();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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

    private static void A04() {
        A06 = new byte[]{118, 34, 57, 118, 8, 63, 59, 62, 51, 52, 61, 122, 41, 53, 47, 40, 57, 63, 122, 81, 102, 102, 123, 102, 52, 112, 125, 103, 119, 123, 122, 122, 113, 119, 96, 125, 122, 115, 52, 92, 96, 96, 100, 65, 102, 120, 87, 123, 122, 122, 113, 119, 96, 125, 123, 122, 92, 21, 15, 92, 21, 18, 8, 25, 14, 14, 9, 12, 8, 25, 24, 26, 45, 45, 48, 45, 127, 45, 58, 62, 59, 54, 49, 56, 127, 59, 62, 43, 62, 127, 57, 45, 48, 50, 127, 54, 9, 28, 23, 89, 26, 22, 23, 23, 28, 26, 13, 16, 22, 23, 89, 9, 62, 58, 63, 123, 56, 52, 53, 47, 62, 53, 47, 123, 50, 53, 61, 52, 123, 61, 41, 52, 54, 123, 64, 124, 124, 120, 93, 122, 100, 91, 103, 125, 122, 107, 109, 115, 125, 122, 100, 53, 47, 20, 24, 91, 87, 86, 76, 93, 86, 76, 21, 84, 93, 86, 95, 76, 80, 2, 24, 87, 96, 96, 125, 96, 50, 116, 119, 102, 113, 122, 123, 124, 117, 50, 123, 124, 116, 125, 50, 116, 96, 125, 127, 50, 32, 2, 31, 8, 9, 51, 17, 19, 24, 21, 121, 98, 111, 126, 104, 38, 123, 33, 59, 118, 114, 118, 126, 33, 59, 60, 120, 75, 68, 77, 79, 29, 7, 68, 72, 73, 73, 66, 68, 83, 78, 72, 73, 7, 78, 84, 7, 70, 69, 84, 66, 73, 83, 6, 66, 55, 96, 126, 99, 127, 55, 120, 113, 113, 100, 114, 99, 55, 35, 15, 14, 20, 5, 14, 20, 64, 9, 14, 6, 15, 64, 6, 15, 18, 64, 0, 9, 62, 62, 35, 62, 108, 35, 60, 41, 34, 37, 34, 43, 108, 47, 35, 34, 34, 41, 47, 56, 37, 35, 34, 108, 42, 35, 62, 108, 56, 27, 23, 21, 0, 29, 27, 26, 31, 36, 36, 107, 38, 42, 37, 50, 107, 57, 46, 47, 34, 57, 46, 40, 63, 56, 113, 107};
    }

    public N1(N1 n1) {
        this.A04 = Integer.MIN_VALUE;
        this.A00 = -1;
        this.A03 = n1.A03;
        this.A05 = n1.A05;
        this.A04 = n1.A04;
    }

    public N1(String str) {
        this(str, N6.A03(str));
    }

    public N1(String str, int i) {
        this(str);
        this.A00 = i;
    }

    private N1(String str, String str2) {
        this.A04 = Integer.MIN_VALUE;
        this.A00 = -1;
        this.A03 = (String) N3.A00(str);
        this.A05 = str2;
    }

    private int A00(HttpURLConnection httpURLConnection, int i, int i2) throws IOException {
        N1 n1 = this;
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
                    n1 = n1;
                    contentLength = n1.A04;
                    c = 2;
                    break;
            }
        }
    }

    private HttpURLConnection A02(int i, int redirectCount) throws C0727Mo, IOException {
        StringBuilder sbAppend = null;
        String strA01 = null;
        HttpURLConnection httpURLConnection = null;
        boolean z = false;
        int responseCode = 0;
        int i2 = 0;
        String headerField = this.A03;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    StringBuilder sb = new StringBuilder();
                    String url = A01(95, 16, 76);
                    sbAppend = sb.append(url);
                    if (i <= 0) {
                        c = 19;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA01 = A01(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 13, 34) + i;
                    c = 4;
                    break;
                case 4:
                    headerField = headerField;
                    sbAppend = sbAppend;
                    strA01 = strA01;
                    sbAppend.append(strA01).append(A01(0, 4, 99)).append(headerField).toString();
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
                    httpURLConnection.setRequestProperty(A01(222, 5, 31), A01(206, 6, 46) + i + A01(221, 1, 36));
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
                    httpURLConnection = httpURLConnection;
                    responseCode = httpURLConnection.getResponseCode();
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
                    headerField = httpURLConnection.getHeaderField(A01(FetchService.ACTION_PAUSE, 8, 65));
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
                    String url2 = A01(FetchService.ACTION_REMOVE_ALL, 20, 126);
                    throw new C0727Mo(sb2.append(url2).append(i2).toString());
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
                    strA01 = A01(222, 0, 49);
                    c = 4;
                    break;
            }
        }
    }

    private void A03() throws C0727Mo, IOException {
        String str = A01(111, 23, 110) + this.A03;
        HttpURLConnection httpURLConnectionA02 = null;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnectionA02 = A02(0, 10000);
                this.A04 = httpURLConnectionA02.getContentLength();
                this.A05 = httpURLConnectionA02.getContentType();
                inputStream = httpURLConnectionA02.getInputStream();
                String str2 = A01(264, 18, 85) + this.A03 + A01(212, 9, 46) + this.A05 + A01(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 18, 13) + this.A04;
                N6.A07(inputStream);
                if (httpURLConnectionA02 != null) {
                    httpURLConnectionA02.disconnect();
                }
            } catch (IOException e) {
                Log.e(A01(196, 10, 69), A01(171, 25, 39) + this.A03, e);
                N6.A07(inputStream);
                if (httpURLConnectionA02 != null) {
                    httpURLConnectionA02.disconnect();
                }
            }
        } catch (Throwable th) {
            N6.A07(inputStream);
            if (httpURLConnectionA02 != null) {
                httpURLConnectionA02.disconnect();
            }
            throw th;
        }
    }

    private final void A05(int i, int i2) throws C0727Mo {
        try {
            this.A02 = A02(i, i2);
            this.A05 = this.A02.getContentType();
            this.A01 = new BufferedInputStream(this.A02.getInputStream(), 8192);
            this.A04 = A00(this.A02, i, this.A02.getResponseCode());
        } catch (IOException e) {
            throw new C0727Mo(A01(282, 29, 121) + this.A03 + A01(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 13, 34) + i, e);
        }
    }

    public final String A06() {
        return this.A03;
    }

    public final synchronized String A07() throws C0724Ml {
        if (TextUtils.isEmpty(this.A05)) {
            A03();
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final void A6Q(int i) throws C0727Mo {
        A05(i, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final void close() throws C0727Mo {
        if (this.A02 != null) {
            try {
                this.A02.disconnect();
            } catch (NullPointerException e) {
                throw new C0727Mo(A01(19, 37, 33), e);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final synchronized int length() throws C0727Mo {
        if (this.A04 == Integer.MIN_VALUE) {
            A03();
        }
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final int read(byte[] bArr) throws C0727Mo {
        if (this.A01 == null) {
            throw new C0727Mo(A01(71, 24, 106) + this.A03 + A01(227, 23, 18));
        }
        try {
            return this.A01.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new N2(A01(4, 15, 111) + this.A03 + A01(56, 15, 73), e);
        } catch (IOException e2) {
            throw new C0727Mo(A01(71, 24, 106) + this.A03, e2);
        }
    }

    public final String toString() {
        return A01(134, 19, 61) + this.A03 + A01(250, 1, 10);
    }
}
