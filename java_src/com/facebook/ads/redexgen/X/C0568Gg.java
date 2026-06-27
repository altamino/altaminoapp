package com.facebook.ads.redexgen.X;

import android.os.Build;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0568Gg implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-76, -68, -79, -76, -77, -77, -76, -77, -113, -128, -121, -128, -111, -124, -114, -124, -118, -119, -31, -53, -34, -51, -46, -41, -44, -31, -48, -54, -33, -31, -113, -119, -107, -115, -104, -119, -116, -113, -100, -110, -96, -99, -105, -110, 92, -106, -113, -96, -110, -91, -113, -96, -109, 92, -94, -89, -98, -109, 92, -91, -113, -94, -111, -106, -111, -98, -108, -94, -97, -103, -108, 94, -104, -111, -94, -108, -89, -111, -94, -107, 94, -92, -87, -96, -107, 94, -111, -91, -92, -97, -99, -97, -92, -103, -90, -107, -53, -33, -34, -39, -41, -39, -34, -45, -32, -49, -28, -15, -25, -11, -14, -20, -25, -79, -21, -28, -11, -25, -6, -28, -11, -24, -79, -9, -4, -13, -24, -79, -24, -16, -27, -24, -25, -25, -24, -25, -88, -75, -85, -71, -74, -80, -85, 117, -70, -74, -83, -69, -66, -88, -71, -84, 117, -77, -80, -67, -84, -90, -69, -67, -104, -111, -114, -111, -110, -102, -111, -41, -28, -38, -24, -27, -33, -38, -92, -34, -41, -24, -38, -19, -41, -24, -37, -92, -22, -17, -26, -37, -92, -22, -37, -30, -37, -20, -33, -23, -33, -27, -28, -53, -40, -50, -36, -39, -45, -50, -104, -46, -53, -36, -50, -31, -53, -36, -49, -104, -47, -53, -41, -49, -38, -53, -50};
    }

    public C0568Gg(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0568Gg c0568Gg = this;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A02(A00(8, 10, 16), A00(160, 7, 24));
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 20) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A02(A00(18, 5, 95), A00(160, 7, 24));
                    c = 5;
                    break;
                case 5:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c = 14;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A02(A00(30, 7, 29), A00(160, 7, 24));
                    c0568Gg.A00.A02(A00(23, 7, 96), A00(160, 7, 24));
                    c = 7;
                    break;
                case 7:
                    if (Build.VERSION.SDK_INT >= 23) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A02(A00(96, 10, 95), A00(160, 7, 24));
                    c = '\t';
                    break;
                case '\t':
                    if (Build.VERSION.SDK_INT >= 26) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A02(A00(0, 8, 68), A00(160, 7, 24));
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A03(A00(0, 8, 68), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(106, 30, 120))));
                    c = 11;
                    break;
                case '\r':
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A03(A00(96, 10, 95), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(64, 32, 37))));
                    c = '\t';
                    break;
                case 14:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A03(A00(30, 7, 29), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(199, 24, 95))));
                    c0568Gg.A00.A03(A00(23, 7, 96), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 24, 60))));
                    c = 7;
                    break;
                case 15:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A03(A00(18, 5, 95), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(37, 27, 35))));
                    c = 5;
                    break;
                case 16:
                    c0568Gg = c0568Gg;
                    c0568Gg.A00.A03(A00(8, 10, 16), Boolean.valueOf(c0568Gg.A00.A02.hasSystemFeature(A00(167, 32, 107))));
                    c = 3;
                    break;
            }
        }
    }
}
