package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.pm.Signature;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class CH implements CG<Integer> {
    private static byte[] A02;
    private final String A00;
    private final String A01;

    static {
        A03();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{24, -41, -13, -79, -106, 108, 115, 110, 119};
    }

    public CH(Signature signature) throws NoSuchAlgorithmException, CertificateException {
        this.A00 = A01(signature, FG.A04);
        this.A01 = A01(signature, FG.A05);
    }

    private static String A01(Signature signature, FG fg) throws NoSuchAlgorithmException, CertificateException {
        InputStream input = new ByteArrayInputStream(signature.toByteArray());
        return FH.A08(((X509Certificate) CertificateFactory.getInstance(A00(4, 5, 9)).generateCertificate(input)).getEncoded(), fg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(Integer num, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A00(2, 2, 75), this.A00);
        jSONObject2.put(A00(0, 2, 112), this.A01);
        jSONObject.put(Integer.toString(num.intValue()), jSONObject2);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        CH newAppCertificateHash = this;
        boolean z = false;
        CH ch = (CH) obj;
        char c = newAppCertificateHash.A00 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    newAppCertificateHash = newAppCertificateHash;
                    ch = ch;
                    if (!newAppCertificateHash.A00.equals(ch.A00)) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    newAppCertificateHash = newAppCertificateHash;
                    if (newAppCertificateHash.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    newAppCertificateHash = newAppCertificateHash;
                    ch = ch;
                    if (!newAppCertificateHash.A01.equals(ch.A01)) {
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

    @Override // com.facebook.ads.redexgen.X.CG
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int A76() {
        CH ch = this;
        int length = 0;
        int length2 = 0;
        char c = ch.A01 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    ch = ch;
                    length = ch.A01.length();
                    c = 3;
                    break;
                case 3:
                    ch = ch;
                    if (ch.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ch = ch;
                    length2 = ch.A00.length();
                    c = 5;
                    break;
                case 5:
                    return length + length2;
                case 6:
                    length2 = 0;
                    length = 0;
                    c = 3;
                    break;
            }
        }
    }
}
