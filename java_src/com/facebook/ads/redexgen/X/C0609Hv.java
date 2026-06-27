package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0609Hv implements HostnameVerifier {
    private static byte[] A01;
    public final /* synthetic */ C0610Hw A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{27, 31, 14, 31, 5, 83, 30, 18, 16, 41, 45, 101, 97, 112, 97, 123, 45, 96, 108, 110};
    }

    public C0609Hv(C0610Hw c0610Hw) {
        this.A00 = c0610Hw;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean zVerify = false;
        HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.contains(A00(0, 9, 98))) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sSLSession = sSLSession;
                    defaultHostnameVerifier = defaultHostnameVerifier;
                    zVerify = defaultHostnameVerifier.verify(A00(9, 11, 28), sSLSession);
                    c = 4;
                    break;
                case 4:
                    return zVerify;
                case 5:
                    str = str;
                    sSLSession = sSLSession;
                    defaultHostnameVerifier = defaultHostnameVerifier;
                    zVerify = defaultHostnameVerifier.verify(str, sSLSession);
                    c = 4;
                    break;
            }
        }
    }
}
