package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import com.narvii.util.ws.WsMessage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"BadImport-BadHttpsURLConnection"})
/* renamed from: com.facebook.ads.redexgen.X.Fn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0549Fn {
    private static byte[] A02;
    private static final String A03;
    private String A00;
    private String A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{91, 74, 74, 86, 83, 89, 91, 78, 83, 85, 84, 21, 80, 73, 85, 84, 1, 89, 82, 91, 72, 73, 95, 78, 7, 111, 110, 124, 23, 2, 2, 83, 113, 113, 119, 98, 102, 63, 81, 122, 115, 96, 97, 119, 102, 38, 127, 83, 82, 72, 89, 82, 72, 17, 104, 69, 76, 89, 78, 79, 93, 54, 35};
    }

    static {
        A03();
        A03 = C0549Fn.class.getSimpleName();
    }

    public C0549Fn(String str, String str2) {
        this.A00 = str;
        this.A01 = str2;
    }

    private static String A01(InputStream inputStream) throws IOException {
        String strA00 = null;
        byte[] bArr = null;
        ByteArrayOutputStream byteArrayOutputStream = null;
        int i = 0;
        char c = inputStream == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA00 = A00(45, 0, 63);
                    c = 3;
                    break;
                case 3:
                    return strA00;
                case 4:
                    bArr = new byte[16384];
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    c = 5;
                    break;
                case 5:
                    inputStream = inputStream;
                    bArr = bArr;
                    i = inputStream.read(bArr);
                    if (i == -1) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    bArr = bArr;
                    byteArrayOutputStream = byteArrayOutputStream;
                    byteArrayOutputStream.write(bArr, 0, i);
                    c = 5;
                    break;
                case 7:
                    byteArrayOutputStream = byteArrayOutputStream;
                    byteArrayOutputStream.flush();
                    strA00 = new String(byteArrayOutputStream.toByteArray());
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0064 A[SYNTHETIC] */
    @android.annotation.SuppressLint({"CatchGeneralException"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String A02(java.util.Map<java.lang.String, java.lang.String> r6) {
        /*
            r5 = 0
            r0 = 0
            r0 = 0
            r0 = 0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r0 = 2
        La:
            switch(r0) {
                case 2: goto L54;
                case 7: goto Le;
                case 24: goto L70;
                default: goto Ld;
            }
        Ld:
            goto La
        Le:
            java.util.Iterator r5 = (java.util.Iterator) r5     // Catch: java.lang.Throwable -> L69
            java.lang.Object r3 = r5.next()     // Catch: java.lang.Throwable -> L69
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> L69
            int r0 = r4.length()     // Catch: java.lang.Throwable -> L69
            if (r0 <= 0) goto L28
            r2 = 30
            r1 = 1
            r0 = 17
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L69
            r4.append(r0)     // Catch: java.lang.Throwable -> L69
        L28:
            java.lang.Object r0 = r3.getKey()     // Catch: java.lang.Throwable -> L69
            r4.append(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L69
            if (r3 == 0) goto L5e
            r2 = 45
            r1 = 1
            r0 = 46
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L69
            r4.append(r0)     // Catch: java.lang.Throwable -> L69
            r2 = 58
            r1 = 5
            r0 = 46
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = java.net.URLEncoder.encode(r3, r0)     // Catch: java.lang.Throwable -> L69
            r4.append(r0)     // Catch: java.lang.Throwable -> L69
            goto L5e
        L54:
            java.util.Map r6 = (java.util.Map) r6     // Catch: java.lang.Throwable -> L69
            java.util.Set r0 = r6.entrySet()     // Catch: java.lang.Throwable -> L69
            java.util.Iterator r5 = r0.iterator()     // Catch: java.lang.Throwable -> L69
        L5e:
            boolean r0 = r5.hasNext()     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L66
            r0 = 7
            goto La
        L66:
            r0 = 24
            goto La
        L69:
            r0 = move-exception
            com.facebook.ads.redexgen.X.C0593Hf.A02(r0)
            r0 = 24
            goto La
        L70:
            java.lang.StringBuilder r4 = (java.lang.StringBuilder) r4
            java.lang.String r0 = r4.toString()
            java.lang.String r0 = (java.lang.String) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0549Fn.A02(java.util.Map):java.lang.String");
    }

    @SuppressLint({"CatchGeneralException"})
    public final C0550Fo A04() {
        C0550Fo c0550Fo;
        HttpsURLConnection conn = null;
        try {
            try {
                conn = (HttpsURLConnection) new URL(this.A00).openConnection();
                conn.setRequestMethod(this.A01);
                conn.setRequestProperty(A00(46, 12, 9), A00(0, 30, 15));
                conn.setRequestProperty(A00(31, 14, 39), A00(58, 5, 46));
                conn.setDoOutput(false);
                conn.setDoInput(true);
                conn.connect();
                c0550Fo = new C0550Fo(conn.getResponseCode(), A01(conn.getInputStream()), A01(conn.getErrorStream()));
                if (conn != null) {
                    conn.disconnect();
                }
            } catch (Throwable th) {
                C0593Hf.A02(th);
                c0550Fo = new C0550Fo(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, A00(45, 0, 63), th.getMessage());
                if (conn != null) {
                    conn.disconnect();
                }
            }
            return c0550Fo;
        } catch (Throwable th2) {
            if (conn != null) {
                conn.disconnect();
            }
            throw th2;
        }
    }
}
