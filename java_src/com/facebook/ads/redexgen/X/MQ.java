package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import io.agora.rtc.Constants;
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
import java.util.TreeMap;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class MQ {
    private static byte[] A0C;
    private static int[] A0D;
    private static final String A0E;
    private JU A01;
    private Set<String> A03;
    private Set<String> A04;
    private boolean A05;
    private boolean A06;
    public final MS A0A = new MT();
    public MU A09 = new MV();
    public int A07 = 2000;
    public int A08 = 8000;
    private int A00 = 3;
    private Map<String, String> A02 = new TreeMap();
    public final MN A0B = new MP(this);

    private static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0A() {
        A0C = new byte[]{63, 54, 59, 42, 41, 63, 62, 90, 46, 51, 55, 63, 90, 71, 90, 120, 116, 6, 0, 116, 105, 116, 10, 6, 82, 84, 95, 79, 72, 65, 6, 82, 68, 67, 93, 17, 28, 90, 17, 28, 88, 40, 37, 108, 40, 42, 20, 93, 71, 20, 90, 91, 64, 20, 85, 20, 66, 85, 88, 93, 80, 20, 97, 102, 120, 24, 35, 44, 47, 33, 40, 109, 57, 34, 109, 59, 44, 33, 36, 41, 44, 57, 40, 109, 30, 30, 1, 109, 46, 40, 63, 57, 36, 43, 36, 46, 44, 57, 40, 62, 99, 39, 11, 18, 3, 7, 31, 7, 74, 24, 15, 30, 24, 3, 15, 25, 74, 7, 31, 25, 30, 74, 8, 15, 74, 8, 15, 30, 29, 15, 15, 4, 74, 91, 74, 11, 4, 14, 74, 91, 82, 77, 61, 49, 82, 69, 49, 44, 49, 28, 95, 73, 78, 80, 28, 62, 63, 45, 70, 83, 72, 22, 31, 54, 59, 94, 54, 52, 30, 28, 53, 50, 63, 32, 54, 0, 105, 117, 117, 113, 47, 106, 100, 100, 113, 64, 109, 104, 119, 100};
    }

    static {
        A0A();
        A0D = new int[20];
        A0E = MQ.class.getSimpleName();
        A08();
        if (Build.VERSION.SDK_INT > 8) {
            A09();
        }
    }

    public MQ(boolean z) {
        this.A06 = z;
    }

    private final int A00(int i) {
        return A0D[i + 2] * 1000;
    }

    private final int A01(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        OutputStream outputStreamA6T = null;
        try {
            outputStreamA6T = this.A0B.A6T(httpURLConnection);
            if (outputStreamA6T != null) {
                this.A0B.A7K(outputStreamA6T, bArr);
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

    @Nullable
    private final C0716Mc A02(MX mx) {
        MQ mq = this;
        C0716Mc c0716McA03 = null;
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mq = mq;
                    mx = mx;
                    mq.A0B(mx);
                    c = 3;
                    break;
                case 3:
                    c0716McA03 = null;
                    c = 4;
                    break;
                case 4:
                    try {
                        mx = mx;
                        c0716McA03 = mq.A03(mx.A04(), mx.A02(), mx.A03(), mx.A05());
                        c = '\f';
                        break;
                    } catch (C0715Mb e) {
                        mq.A0B.A5I(e);
                        c = '\f';
                        break;
                    } catch (Exception e2) {
                        mq.A0B.A5I(new C0715Mb(e2, c0716McA03));
                        c = '\f';
                        break;
                    }
                case '\f':
                    return c0716McA03;
            }
        }
    }

    private final C0716Mc A03(String str, MZ mz, String str2, byte[] bArr) throws C0715Mb {
        C0716Mc c0716Mc;
        HttpURLConnection uc = null;
        C0716Mc c0716McA04 = null;
        try {
            try {
                this.A05 = false;
                HttpURLConnection uc2 = A07(str);
                A0F(uc2, mz, str2);
                A0E(uc2);
                if (this.A09.A3y()) {
                    this.A09.A4Q(uc2, bArr);
                }
                uc2.connect();
                this.A05 = true;
                boolean z = (this.A03 == null || this.A03.isEmpty()) ? false : true;
                boolean pinCerts = (this.A04 == null || this.A04.isEmpty()) ? false : true;
                if ((uc2 instanceof HttpsURLConnection) && (z || pinCerts)) {
                    try {
                        C0717Md.A03((HttpsURLConnection) uc2, this.A03, this.A04);
                    } catch (Exception e) {
                        Log.e(A0E, A06(65, 36, 49), e);
                    }
                }
                if (uc2.getDoOutput() && bArr != null) {
                    A01(uc2, bArr);
                }
                if (uc2.getDoInput()) {
                    c0716Mc = A05(uc2);
                } else {
                    c0716Mc = new C0716Mc(uc2, null);
                }
                if (this.A09.A3y()) {
                    this.A09.A4R(c0716Mc);
                }
                if (uc2 != null) {
                    uc2.disconnect();
                    return c0716Mc;
                }
                return c0716Mc;
            } catch (Exception e2) {
                try {
                    try {
                        c0716McA04 = A04(null);
                        if (c0716McA04 != null && c0716McA04.A00() > 0) {
                            if (this.A09.A3y()) {
                                this.A09.A4R(c0716McA04);
                            }
                            if (0 != 0) {
                                uc.disconnect();
                            }
                            return c0716McA04;
                        }
                        throw new C0715Mb(e2, c0716McA04);
                    } catch (Exception unused) {
                        e2.printStackTrace();
                        if (c0716McA04 != null && c0716McA04.A00() > 0) {
                            if (this.A09.A3y()) {
                                this.A09.A4R(c0716McA04);
                            }
                            if (0 != 0) {
                                uc.disconnect();
                            }
                            return c0716McA04;
                        }
                        throw new C0715Mb(e2, c0716McA04);
                    }
                } catch (Throwable unused2) {
                    if (c0716McA04 != null && c0716McA04.A00() > 0) {
                        if (this.A09.A3y()) {
                            this.A09.A4R(c0716McA04);
                        }
                        if (0 != 0) {
                            uc.disconnect();
                        }
                        return c0716McA04;
                    }
                    throw new C0715Mb(e2, c0716McA04);
                }
            }
        } catch (Throwable th) {
            if (this.A09.A3y()) {
                this.A09.A4R(c0716McA04);
            }
            if (0 != 0) {
                uc.disconnect();
            }
            throw th;
        }
    }

    private final C0716Mc A04(HttpURLConnection httpURLConnection) throws Exception {
        InputStream errorStream = null;
        byte[] bArrA6j = null;
        try {
            errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                bArrA6j = this.A0B.A6j(errorStream);
            }
            C0716Mc c0716Mc = new C0716Mc(httpURLConnection, bArrA6j);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused) {
                }
            }
            return c0716Mc;
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

    private final C0716Mc A05(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStreamA6S = null;
        byte[] bArrA6j = null;
        try {
            inputStreamA6S = this.A0B.A6S(httpURLConnection);
            if (inputStreamA6S != null) {
                bArrA6j = this.A0B.A6j(inputStreamA6S);
            }
            C0716Mc c0716Mc = new C0716Mc(httpURLConnection, bArrA6j);
            if (inputStreamA6S != null) {
                try {
                    inputStreamA6S.close();
                } catch (Exception unused) {
                }
            }
            return c0716Mc;
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

    private final HttpURLConnection A07(String str) throws IOException {
        try {
            new URL(str);
            return this.A0B.A6R(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(str + A06(46, 19, 72), e);
        }
    }

    private static void A08() {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty(A06(176, 14, 125), A06(170, 5, 47));
        }
    }

    private static void A09() {
        if (CookieHandler.getDefault() == null) {
            CookieHandler.setDefault(new CookieManager());
        }
    }

    private void A0B(MX mx) {
        MQ mq = this;
        Iterator<Map.Entry<String, String>> it = null;
        StringBuilder sb = new StringBuilder(A06(31, 10, 77));
        char c = mx.A02().equals(MZ.A05) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    mx = mx;
                    if (mx.A05() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    mx = mx;
                    sb = sb;
                    sb.append(A06(41, 5, 116));
                    sb.append(new String(mx.A05(), Charset.forName(A06(Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 5, 23))));
                    sb.append(A06(ScriptIntrinsicBLAS.LEFT, 1, 19));
                    c = 4;
                    break;
                case 4:
                    mq = mq;
                    it = mq.A02.entrySet().iterator();
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
                    sb.append(A06(163, 5, 106));
                    sb.append(next.getKey());
                    sb.append(A06(175, 1, 70));
                    sb.append(next.getValue());
                    sb.append(A06(ScriptIntrinsicBLAS.LEFT, 1, 19));
                    c = 5;
                    break;
                case 7:
                    StringBuilder sb2 = sb;
                    sb2.append(A06(168, 2, 66));
                    sb2.append(mx.A04());
                    sb2.append(A06(ScriptIntrinsicBLAS.LEFT, 1, 19));
                    String string = sb2.toString();
                    mq.A0D(string, 1, (string.length() / 4000) + 1);
                    return;
            }
        }
    }

    private final void A0C(MX mx, Lp lp) {
        this.A0A.A3E(this, lp).A2z(mx);
        if (BuildConfigApi.isDebug()) {
            A0B(mx);
        }
    }

    private void A0D(String str, int i, int i2) {
        String str2 = A0E + A06(149, 6, 64) + i + A06(160, 1, 27) + i2;
        if (str.length() > 4000) {
            str.substring(0, 4000);
            A0D(str.substring(4000), i + 1, i2);
        }
    }

    private void A0E(HttpURLConnection httpURLConnection) {
        MQ mq = this;
        Map<String, String> mapA3A = null;
        Iterator<String> it = null;
        Iterator<String> it2 = mq.A02.keySet().iterator();
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
                    mq = mq;
                    httpURLConnection = httpURLConnection;
                    it2 = it2;
                    String next = it2.next();
                    String value = mq.A02.get(next);
                    httpURLConnection.setRequestProperty(next, value);
                    c = 2;
                    break;
                case 4:
                    mq = mq;
                    if (mq.A01 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    mq = mq;
                    mapA3A = mq.A01.A3A(mq.A06);
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

    private final void A0F(HttpURLConnection httpURLConnection, MZ mz, String str) throws IOException {
        httpURLConnection.setConnectTimeout(this.A07);
        httpURLConnection.setReadTimeout(this.A08);
        this.A0B.A6a(httpURLConnection, mz, str);
    }

    private final boolean A0G(Throwable th, long j) {
        MQ mq = this;
        boolean z = true;
        long jCurrentTimeMillis = (System.currentTimeMillis() - j) + 10;
        char c = mq.A09.A3y() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mq = mq;
                    mq.A09.A47(A06(0, 15, 6) + jCurrentTimeMillis + A06(ScriptIntrinsicBLAS.RIGHT, 7, 109) + mq.A07 + A06(15, 7, 40) + mq.A08);
                    c = 3;
                    break;
                case 3:
                    mq = mq;
                    if (!mq.A05) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    mq = mq;
                    if (jCurrentTimeMillis < mq.A08) {
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
                    mq = mq;
                    if (jCurrentTimeMillis >= mq.A07) {
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

    public final MQ A0H(String str, String str2) {
        this.A02.put(str, str2);
        return this;
    }

    public final C0716Mc A0I(MX mx) throws InterruptedException, C0715Mb {
        C0716Mc c0716McA03;
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i = 0; i < this.A00; i++) {
            try {
                A0N(A00(i));
                if (this.A09.A3y()) {
                    this.A09.A47((i + 1) + A06(161, 2, 5) + this.A00 + A06(22, 9, 90) + mx.A04());
                }
                jCurrentTimeMillis = System.currentTimeMillis();
                c0716McA03 = A03(mx.A04(), mx.A02(), mx.A03(), mx.A05());
            } catch (C0715Mb e) {
                if (A0G(e, jCurrentTimeMillis) && i < this.A00 - 1) {
                    continue;
                } else if (this.A0B.A5I(e) && i < this.A00 - 1) {
                    try {
                        long startTime = this.A07;
                        Thread.sleep(startTime);
                    } catch (InterruptedException unused) {
                        throw e;
                    }
                } else {
                    throw e;
                }
            }
            if (c0716McA03 != null) {
                return c0716McA03;
            }
        }
        return null;
    }

    @Nullable
    public final C0716Mc A0J(String str, C0718Me c0718Me) {
        return A02(new MY(str, c0718Me));
    }

    @Nullable
    public final C0716Mc A0K(String str, C0718Me c0718Me) {
        return A02(new C0714Ma(str, c0718Me));
    }

    @Nullable
    public C0716Mc A0L(String str, String str2, byte[] bArr) {
        return A02(new C0714Ma(str, null, str2, bArr));
    }

    public final C0718Me A0M() {
        return new C0718Me();
    }

    public final void A0N(int i) {
        this.A07 = i;
    }

    public final void A0O(int i) {
        char c = i >= 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (i <= 18) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A06(101, 40, 22));
                case 4:
                    this.A00 = i;
                    return;
            }
        }
    }

    public final void A0P(int i) {
        this.A08 = i;
    }

    public final void A0Q(JU ju) {
        this.A01 = ju;
    }

    public final void A0R(String str, C0718Me c0718Me, Lp lp) {
        A0C(new C0714Ma(str, c0718Me), lp);
    }

    public final void A0S(Set<String> pinnedCertificates) {
        this.A03 = pinnedCertificates;
    }

    public final void A0T(Set<String> pinnedPublicKeys) {
        this.A04 = pinnedPublicKeys;
    }
}
