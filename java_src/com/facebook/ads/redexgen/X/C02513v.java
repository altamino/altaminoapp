package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.util.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3v, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02513v implements InterfaceC02855d {
    private static byte[] A07;
    public static final String A08;
    private PB A00;
    private Executor A01;
    private boolean A02;
    public C5Y A03;
    public final InterfaceC02734r A06;
    public final C5D A05 = new C5D() { // from class: com.facebook.ads.redexgen.X.5C
        @Override // com.facebook.ads.redexgen.X.C5D
        public final C5M A3F(C02513v c02513v, InterfaceC0703Ln interfaceC0703Ln, Executor executor) {
            return new AsyncTaskC02714p(c02513v, interfaceC0703Ln, executor);
        }
    };
    public C3M A04 = new C3H();

    private static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A09() {
        A07 = new byte[]{30, 37, 26, 41, 44, 30, 29, -7, 45, 34, 38, 30, -7, 22, -7, -11, -23, 27, 29, -23, 6, -23, -81, -93, -9, -11, -4, -20, -15, -22, -93, -42, -24, -27, -33, -109, -96, -34, -109, -96, -36, -10, 3, 58, -10, -8, -22, 51, 61, -22, 56, 57, 62, -22, 43, -22, 64, 43, 54, 51, 46, -22, 31, 28, 22, 42, 67, 54, 55, 65, 58, -11, 73, 68, -11, 75, 54, 65, 62, 57, 54, 73, 58, -11, 40, 40, 33, -11, 56, 58, 71, 73, 62, 59, 62, 56, 54, 73, 58, 72, 3, 46, 61, 61, 57, 54, 48, 46, 65, 54, 60, 59, -4, 69, -6, 68, 68, 68, -6, 51, 60, 63, 58, -6, 66, 63, 57, 50, 59, 48, 60, 49, 50, 49, 8, 48, 53, 46, 63, 64, 50, 65, 10, 34, 33, 19, -6, 5, -18, 61, 52, -18, -70, -40, -25, -25, -36, -31, -38, -109, -25, -37, -40, -109, -37, -25, -25, -29, -109, -27, -40, -26, -29, -30, -31, -26, -40, -109, -25, -36, -32, -40, -41, -109, -30, -24, -25, -73, -1, -13, 22, 39, -13, 16, -13, -123, -56, -38, -41, -47, -123, -38, -39, -53, -78, -67, 9, -78, -65, -38, -78, -76, -46, -44, -79};
    }

    static {
        A09();
        A08 = InterfaceC02855d.class.getSimpleName();
    }

    public C02513v(C5Y c5y, PB pb, Executor executor) {
        A0A();
        this.A03 = c5y;
        this.A06 = new AbstractC02724q() { // from class: com.facebook.ads.redexgen.X.4X
        };
        this.A01 = executor;
        this.A00 = pb;
    }

    private final int A00(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStreamA6T = null;
        try {
            outputStreamA6T = this.A06.A6T(httpURLConnection);
            if (outputStreamA6T != null) {
                this.A06.A7K(outputStreamA6T, bArr);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (outputStreamA6T != null) {
                try {
                    outputStreamA6T.close();
                } catch (Exception unused) {
                }
            }
            return responseCode;
        } catch (Throwable th) {
            if (outputStreamA6T != null) {
                try {
                    outputStreamA6T.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final C5e A01(AbstractC02704o abstractC02704o) throws C02564a {
        C5e c4z;
        HttpURLConnection httpURLConnection = null;
        C5e c5eA05 = null;
        try {
            try {
                this.A02 = false;
                HttpURLConnection httpURLConnectionA08 = A08(abstractC02704o.A05());
                A0G(httpURLConnectionA08, abstractC02704o);
                A0F(httpURLConnectionA08, abstractC02704o);
                if (this.A04.A3y()) {
                    this.A04.A4Q(httpURLConnectionA08, abstractC02704o.A06());
                }
                httpURLConnectionA08.connect();
                this.A02 = true;
                Set<String> setA01 = this.A03.A01();
                Set<String> setA02 = this.A03.A02();
                boolean z = (setA01 == null || setA01.isEmpty()) ? false : true;
                boolean z2 = (setA02 == null || setA02.isEmpty()) ? false : true;
                boolean pinKeys = httpURLConnectionA08 instanceof HttpsURLConnection;
                if (pinKeys && (z || z2)) {
                    try {
                        C3L.A03((HttpsURLConnection) httpURLConnectionA08, setA01, setA02);
                    } catch (Exception e) {
                        Log.e(A08, A07(65, 36, 120), e);
                    }
                }
                boolean pinKeys2 = httpURLConnectionA08.getDoOutput();
                if (pinKeys2 && abstractC02704o.A06() != null) {
                    A00(httpURLConnectionA08, abstractC02704o.A06());
                }
                boolean pinKeys3 = httpURLConnectionA08.getDoInput();
                if (pinKeys3) {
                    c4z = A06(httpURLConnectionA08);
                } else {
                    c4z = new C4Z(httpURLConnectionA08, null);
                }
                if (this.A04.A3y()) {
                    this.A04.A4S(c4z);
                }
                if (httpURLConnectionA08 != null) {
                    httpURLConnectionA08.disconnect();
                    return c4z;
                }
                return c4z;
            } catch (Exception e2) {
                try {
                    try {
                        c5eA05 = A05(null);
                        if (c5eA05 != null && c5eA05.A3m() > 0) {
                            if (this.A04.A3y()) {
                                this.A04.A4S(c5eA05);
                            }
                            if (0 != 0) {
                                httpURLConnection.disconnect();
                            }
                            return c5eA05;
                        }
                        throw new C02564a(e2, c5eA05);
                    } catch (Exception unused) {
                        e2.printStackTrace();
                        if (c5eA05 != null && c5eA05.A3m() > 0) {
                            if (this.A04.A3y()) {
                                this.A04.A4S(c5eA05);
                            }
                            if (0 != 0) {
                                httpURLConnection.disconnect();
                            }
                            return c5eA05;
                        }
                        throw new C02564a(e2, c5eA05);
                    }
                } catch (Throwable unused2) {
                    if (c5eA05 != null && c5eA05.A3m() > 0) {
                        if (this.A04.A3y()) {
                            this.A04.A4S(c5eA05);
                        }
                        if (0 != 0) {
                            httpURLConnection.disconnect();
                        }
                        return c5eA05;
                    }
                    throw new C02564a(e2, c5eA05);
                }
            }
        } catch (Throwable th) {
            if (this.A04.A3y()) {
                this.A04.A4S(c5eA05);
            }
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    @Nullable
    private final C5e A02(AbstractC02704o abstractC02704o) {
        C02513v c02513v = this;
        C5e httpResponse = null;
        char c = c02513v.A03.A04() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02513v = c02513v;
                    abstractC02704o = abstractC02704o;
                    c02513v.A0B(abstractC02704o);
                    c = 3;
                    break;
                case 3:
                    httpResponse = null;
                    c = 4;
                    break;
                case 4:
                    try {
                        c02513v = c02513v;
                        abstractC02704o = abstractC02704o;
                        httpResponse = c02513v.A01(abstractC02704o);
                        c = '\b';
                        break;
                    } catch (C02564a e) {
                        c02513v.A06.A5J(e);
                        c = '\b';
                        break;
                    } catch (Exception e2) {
                        c02513v.A06.A5J(new C02564a(e2, httpResponse));
                        c = '\b';
                        break;
                    }
                case '\b':
                    return httpResponse;
            }
        }
    }

    @Nullable
    private final C5e A03(final String str, final C3U c3u, final C5V c5v) {
        return A02(new AbstractC02704o(str, c3u, c5v) { // from class: com.facebook.ads.redexgen.X.4n
            {
                this.A01 = EnumC02644i.A04;
            }
        });
    }

    @Nullable
    private final C5e A04(String str, String str2, byte[] bArr, C5V c5v) {
        return A02(new C02614f(str, null, str2, bArr, c5v));
    }

    private final C5e A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream errorStream = null;
        byte[] bArrA6j = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                bArrA6j = this.A06.A6j(errorStream);
            }
            C4Z c4z = new C4Z(httpURLConnection, bArrA6j);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused) {
                }
            }
            return c4z;
        } catch (Throwable th) {
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final C5e A06(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStreamA6S = null;
        byte[] bArrA6j = null;
        try {
            inputStreamA6S = this.A06.A6S(httpURLConnection);
            if (inputStreamA6S != null) {
                bArrA6j = this.A06.A6j(inputStreamA6S);
            }
            C4Z c4z = new C4Z(httpURLConnection, bArrA6j);
            if (inputStreamA6S != null) {
                try {
                    inputStreamA6S.close();
                } catch (Exception unused) {
                }
            }
            return c4z;
        } catch (Throwable th) {
            if (inputStreamA6S != null) {
                try {
                    inputStreamA6S.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private final HttpURLConnection A08(String str) throws IOException {
        try {
            new URL(str);
            TrafficStats.setThreadStatsTag(61453);
            return this.A06.A6R(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + A07(46, 19, 109), e);
        }
    }

    private static synchronized void A0A() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private void A0B(AbstractC02704o abstractC02704o) {
        Iterator<Map.Entry<String, String>> it = null;
        StringBuilder sb = new StringBuilder(A07(31, 10, 22));
        char c = abstractC02704o.A03().equals(EnumC02644i.A05) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC02704o = abstractC02704o;
                    if (abstractC02704o.A06() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC02704o = abstractC02704o;
                    sb = sb;
                    sb.append(A07(41, 5, 121));
                    sb.append(new String(abstractC02704o.A06(), Charset.forName(A07(201, 5, 40))));
                    sb.append(A07(187, 1, 56));
                    c = 4;
                    break;
                case 4:
                    abstractC02704o = abstractC02704o;
                    it = abstractC02704o.A02().A06().entrySet().iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    sb = sb;
                    it = it;
                    Map.Entry<String, String> next = it.next();
                    sb.append(A07(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 5, 53));
                    sb.append(next.getKey());
                    sb.append(A07(214, 1, 26));
                    sb.append(next.getValue());
                    sb.append(A07(187, 1, 56));
                    c = 5;
                    break;
                case 7:
                    StringBuilder sb2 = sb;
                    sb2.append(A07(212, 2, 85));
                    sb2.append(abstractC02704o.A05());
                    sb2.append(A07(187, 1, 56));
                    String string = sb2.toString();
                    A0D(string, 1, (string.length() / 4000) + 1);
                    return;
            }
        }
    }

    private void A0C(AbstractC02704o abstractC02704o, InterfaceC0703Ln interfaceC0703Ln) {
        this.A05.A3F(this, interfaceC0703Ln, this.A01).A30(abstractC02704o);
        if (this.A03.A04()) {
            A0B(abstractC02704o);
        }
    }

    private void A0D(String str, int i, int i2) {
        String str2 = A08 + A07(195, 6, 8) + i + A07(206, 1, 125) + i2;
        if (str.length() > 4000) {
            str.substring(0, 4000);
            A0D(str.substring(4000), i + 1, i2);
        }
    }

    private void A0E(String str, String str2, byte[] bArr, InterfaceC0703Ln interfaceC0703Ln, C5V c5v) {
        A0C(new C02614f(str, null, str2, bArr, c5v), interfaceC0703Ln);
    }

    private void A0F(HttpURLConnection httpURLConnection, AbstractC02704o abstractC02704o) {
        C02513v c02513v = this;
        Iterator<String> it = null;
        Map<String, String> mapA3A = null;
        Map<String, String> mapA06 = abstractC02704o.A02().A06();
        JV jvA05 = abstractC02704o.A02().A05();
        Iterator<String> it2 = mapA06.keySet().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    httpURLConnection = httpURLConnection;
                    mapA06 = mapA06;
                    it2 = it2;
                    String next = it2.next();
                    String value = mapA06.get(next);
                    httpURLConnection.setRequestProperty(next, value);
                    c = 2;
                    break;
                case 4:
                    jvA05 = jvA05;
                    if (jvA05 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c02513v = c02513v;
                    jvA05 = jvA05;
                    mapA3A = jvA05.A3A(c02513v.A03.A03());
                    it = mapA3A.keySet().iterator();
                    c = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    httpURLConnection = httpURLConnection;
                    mapA3A = mapA3A;
                    it = it;
                    String next2 = it.next();
                    httpURLConnection.setRequestProperty(next2, mapA3A.get(next2));
                    c = 6;
                    break;
                case '\b':
                    return;
            }
        }
    }

    private final void A0G(HttpURLConnection httpURLConnection, AbstractC02704o abstractC02704o) throws IOException {
        C5V c5vA02 = abstractC02704o.A02();
        httpURLConnection.setConnectTimeout(c5vA02.A00());
        httpURLConnection.setReadTimeout(c5vA02.A02());
        this.A06.A6b(httpURLConnection, abstractC02704o.A03(), abstractC02704o.A04());
    }

    private final boolean A0H(Throwable th, long j, AbstractC02704o abstractC02704o) {
        C02513v c02513v = this;
        boolean z = true;
        C5V c5vA02 = abstractC02704o.A02();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        char c = c02513v.A04.A3y() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02513v = c02513v;
                    c5vA02 = c5vA02;
                    c02513v.A04.A47(A07(0, 15, 124) + jCurrentTimeMillis + A07(TsExtractor.TS_PACKET_SIZE, 7, 118) + c5vA02.A00() + A07(15, 7, 108) + c5vA02.A02());
                    c = 3;
                    break;
                case 3:
                    c02513v = c02513v;
                    if (!c02513v.A02) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c5vA02 = c5vA02;
                    if (jCurrentTimeMillis < c5vA02.A02()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
                case 7:
                    c5vA02 = c5vA02;
                    if (jCurrentTimeMillis >= c5vA02.A00()) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final C5e A0I(AbstractC02704o abstractC02704o) throws InterruptedException, C02564a {
        C5e c5eA01;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iA01 = abstractC02704o.A02().A01();
        int maxRetries = abstractC02704o.A02().A03();
        long j = maxRetries;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        long throttleTimeMs = abstractC02704o.A02().A04();
        long j2 = jCurrentTimeMillis2 + throttleTimeMs;
        for (int i = 0; i < iA01 && j2 > System.currentTimeMillis(); i++) {
            try {
                if (this.A04.A3y()) {
                    this.A04.A47((i + 1) + A07(148, 4, 113) + iA01 + A07(22, 9, 38) + abstractC02704o.A05());
                }
                jCurrentTimeMillis = System.currentTimeMillis();
                c5eA01 = A01(abstractC02704o);
            } catch (C02564a e) {
                if (A0H(e, jCurrentTimeMillis, abstractC02704o) && i < iA01 - 1) {
                    continue;
                } else {
                    if (!this.A06.A5J(e) || i >= iA01 - 1) {
                        C5e c5eA00 = e.A00();
                        PB pb = this.A00;
                        long endTimeMillis = System.currentTimeMillis();
                        pb.A4K(jCurrentTimeMillis, endTimeMillis - jCurrentTimeMillis, (c5eA00 == null || c5eA00.A3G() == null) ? 0L : c5eA00.A3G().length, abstractC02704o.A04 == null ? 0L : abstractC02704o.A04.length, c5eA00 == null ? 0 : c5eA00.A3m(), e);
                        throw e;
                    }
                    if (j > 0) {
                        try {
                            Thread.sleep(j);
                        } catch (InterruptedException e2) {
                            this.A00.A4K(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC02704o.A04 == null ? 0L : abstractC02704o.A04.length, 0, e2);
                            throw e;
                        }
                    } else {
                        continue;
                    }
                }
            }
            if (c5eA01 != null) {
                PB pb2 = this.A00;
                long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                long length = c5eA01.A3G().length;
                long throttleTimeMs2 = abstractC02704o.A04 == null ? 0L : abstractC02704o.A04.length;
                pb2.A4K(jCurrentTimeMillis, jCurrentTimeMillis3, length, throttleTimeMs2, c5eA01.A3m(), null);
                return c5eA01;
            }
            continue;
        }
        this.A00.A4K(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, abstractC02704o.A04 == null ? 0L : abstractC02704o.A04.length, 0, new TimeoutException(A07(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 35, 22)));
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02855d
    @Nullable
    @Deprecated
    public final C5e A6W(String str, Map<String, String> map) {
        return A03(str, new C3U(map), this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02855d
    @Nullable
    @Deprecated
    public final C5e A6X(String str, byte[] bArr) {
        return A04(str, A07(101, 47, 112), bArr, this.A03.A00());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02855d
    public final void A6Y(String str, byte[] bArr, InterfaceC0703Ln interfaceC0703Ln) {
        A0E(str, A07(101, 47, 112), bArr, interfaceC0703Ln, this.A03.A00());
    }
}
