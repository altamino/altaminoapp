package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0610Hw {
    private static byte[] A01;
    private static final Map<String, File> A02;
    private final Context A00;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-40, -37, -34, -41, -84, -95, -95, -58, -13, -13, -16, -13, -95, -27, -10, -13, -22, -17, -24, -95, -16, -15, -26, -17, -22, -17, -24, -95, -28, -16, -17, -17, -26, -28, -11, -22, -16, -17, -81, 74, 119, 119, 116, 119, 37, 104, 102, 104, 109, 110, 115, 108, 37, 121, 109, 106, 37, 107, 110, 113, 106, -117, -114, -111, -118, 95, 84, 84, 84, -122, -109, -119, -105, -108, -114, -119, -124, -122, -104, -104, -118, -103, 84, 123, -88, -88, -91, -88, 86, -102, -85, -88, -97, -92, -99, 86, -88, -101, -105, -102, -97, -92, -99, 86, -102, -105, -86, -105, 100, -72, -27, -27, -30, -27, -109, -42, -33, -30, -26, -36, -31, -38, -109, -25, -37, -40, -109, -39, -36, -33, -40, -87, -84, -98, -95};
    }

    static {
        A03();
        A02 = new HashMap();
    }

    public C0610Hw(Context context) {
        this.A00 = context;
    }

    private static int A00(byte[] bArr, InputStream inputStream) throws C0727Mo {
        try {
            return inputStream.read(bArr);
        } catch (IOException e) {
            throw new C0727Mo(A02(83, 26, 50), e);
        }
    }

    private InputStream A01(String str) throws C0727Mo, IOException {
        try {
            if (str.startsWith(A02(61, 22, 33))) {
                return this.A00.getAssets().open(str.substring(A02(61, 22, 33).length()));
            }
            C0609Hv c0609Hv = new C0609Hv(this);
            URL url = new URL(str);
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            if (uRLConnectionOpenConnection instanceof HttpsURLConnection) {
                ((HttpsURLConnection) uRLConnectionOpenConnection).setHostnameVerifier(c0609Hv);
            }
            uRLConnectionOpenConnection.connect();
            return new BufferedInputStream(uRLConnectionOpenConnection.getInputStream());
        } catch (IOException e) {
            throw new C0727Mo(A02(7, 32, 125), e);
        }
    }

    @Nullable
    public final String A04(String str) {
        File file;
        synchronized (A02) {
            file = A02.get(str);
        }
        if (file == null) {
            return null;
        }
        return A02(0, 7, 110) + file.getPath();
    }

    public final boolean A05(C0605Hr c0605Hr) throws IOException {
        IC.A03(c0605Hr, null);
        String str = c0605Hr.A06;
        InputStream inputStreamA01 = null;
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                File fileA00 = N7.A00(this.A00);
                String extension = c0605Hr.A02;
                File targetFile = new File(fileA00, new NG().A39(str) + extension);
                N9 n9 = new N9(targetFile, new NI(67108864L));
                if (n9.A3u()) {
                    synchronized (A02) {
                        A02.put(str, targetFile);
                    }
                    n9.close();
                    IA.A08(str, true, A02(131, 4, 57));
                    if (inputStreamA01 == null) {
                        return true;
                    }
                    try {
                        inputStreamA01.close();
                        return true;
                    } catch (IOException e) {
                        String extension2 = C0611Hx.A02;
                        String baseUrl = A02(109, 22, 111);
                        Log.e(extension2, baseUrl, e);
                        return true;
                    }
                }
                IA.A08(str, false, A02(131, 4, 57));
                inputStreamA01 = A01(str);
                byte[] bArr = new byte[8192];
                while (true) {
                    int iA00 = A00(bArr, inputStreamA01);
                    if (iA00 == -1) {
                        break;
                    }
                    n9.A2b(bArr, iA00);
                }
                int iAvailable = n9.available();
                n9.A2n();
                n9.close();
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                synchronized (A02) {
                    A02.put(str, targetFile);
                }
                IA.A06(str, A02(131, 4, 57), IA.A02, null, Integer.valueOf(iAvailable), Long.valueOf(jCurrentTimeMillis2));
                return true;
            } catch (C0725Mm e2) {
                IA.A06(str, A02(131, 4, 57), IA.A01, e2.toString(), null, null);
                Log.e(C0611Hx.A02, A02(39, 22, 1), e2);
                if (inputStreamA01 == null) {
                    return false;
                }
                try {
                    inputStreamA01.close();
                    return false;
                } catch (IOException e3) {
                    String str2 = C0611Hx.A02;
                    String baseUrl2 = A02(109, 22, 111);
                    Log.e(str2, baseUrl2, e3);
                    return false;
                }
            } catch (C0727Mo e4) {
                IA.A06(str, A02(131, 4, 57), IA.A03, e4.toString(), null, null);
                Log.e(C0611Hx.A02, A02(39, 22, 1), e4);
                if (inputStreamA01 == null) {
                    return false;
                }
                try {
                    inputStreamA01.close();
                    return false;
                } catch (IOException e5) {
                    String str3 = C0611Hx.A02;
                    String baseUrl3 = A02(109, 22, 111);
                    Log.e(str3, baseUrl3, e5);
                    return false;
                }
            }
        } finally {
            if (inputStreamA01 != null) {
                try {
                    inputStreamA01.close();
                } catch (IOException e6) {
                    String extension3 = C0611Hx.A02;
                    String baseUrl4 = A02(109, 22, 111);
                    Log.e(extension3, baseUrl4, e6);
                }
            }
        }
    }
}
