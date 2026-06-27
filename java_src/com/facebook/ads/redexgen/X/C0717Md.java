package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Md, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0717Md {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 120);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{56, 34, 60, 34, 63, 11, 16, 25, 117, 105, 84, 111, 96, 99, 109, 100, 33, 117, 110, 33, 103, 104, 111, 101, 33, 119, 96, 109, 104, 101, 33, 98, 100, 115, 117, 104, 103, 104, 98, 96, 117, 100, 33, 110, 115, 33, 113, 116, 99, 109, 104, 98, 33, 106, 100, 120, 47};
    }

    private C0717Md() {
    }

    private static String A01(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }

    public static void A03(HttpsURLConnection httpsURLConnection, Set<String> set, Set<String> set2) throws Exception {
        if (Build.VERSION.SDK_INT == 15 && A00(0, 5, 116).equals(Build.VERSION.RELEASE)) {
            return;
        }
        try {
            for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
                X509Certificate x509Certificate = (X509Certificate) certificate;
                String strA01 = A01(x509Certificate.getEncoded(), A00(5, 5, 32));
                if (set != null && set.contains(strA01)) {
                    return;
                }
                String strA012 = A01(x509Certificate.getPublicKey().getEncoded(), A00(5, 5, 32));
                if (set2 != null && set2.contains(strA012)) {
                    return;
                }
            }
            throw new CertificateException(A00(10, 47, 121));
        } catch (Exception e) {
            throw e;
        }
    }
}
