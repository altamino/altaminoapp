package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OL {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-49, -36, -46, -32, -35, -41, -46, -100, -34, -45, -32, -37, -41, -31, -31, -41, -35, -36, -100, -81, -79, -79, -77, -63, -63, -51, -68, -77, -62, -59, -67, -64, -71, -51, -63, -62, -81, -62, -77, -14, -2, -3, -3, -12, -14, 3, -8, 5, -8, 3, 8};
    }

    private OL() {
    }

    public static OK A00(Context context) {
        OK ok = null;
        NetworkInfo activeNetworkInfo = null;
        char c = context.checkCallingOrSelfPermission(A01(0, 39, 73)) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ok = OK.A08;
                    c = 3;
                    break;
                case 3:
                    return ok;
                case 4:
                    context = context;
                    activeNetworkInfo = ((ConnectivityManager) context.getSystemService(A01(39, 12, 106))).getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    activeNetworkInfo = activeNetworkInfo;
                    if (!activeNetworkInfo.isConnected()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    ok = OK.A07;
                    c = 3;
                    break;
                case 7:
                    activeNetworkInfo = activeNetworkInfo;
                    if (activeNetworkInfo.getType() != 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    activeNetworkInfo = activeNetworkInfo;
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                            c = '\f';
                            break;
                        case 2:
                            c = '\f';
                            break;
                        case 3:
                            c = 11;
                            break;
                        case 4:
                            c = '\f';
                            break;
                        case 5:
                            c = 11;
                            break;
                        case 6:
                            c = 11;
                            break;
                        case 7:
                            c = '\f';
                            break;
                        case 8:
                            c = 11;
                            break;
                        case 9:
                            c = 11;
                            break;
                        case 10:
                            c = 11;
                            break;
                        case 11:
                            c = '\f';
                            break;
                        case 12:
                            c = 11;
                            break;
                        case 13:
                            c = '\n';
                            break;
                        case 14:
                            c = 11;
                            break;
                        case 15:
                            c = 11;
                            break;
                        default:
                            c = '\t';
                            break;
                    }
                case '\t':
                    ok = OK.A08;
                    c = 3;
                    break;
                case '\n':
                    ok = OK.A05;
                    c = 3;
                    break;
                case 11:
                    ok = OK.A04;
                    c = 3;
                    break;
                case '\f':
                    ok = OK.A03;
                    c = 3;
                    break;
                case '\r':
                    ok = OK.A06;
                    c = 3;
                    break;
            }
        }
    }
}
