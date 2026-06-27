package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2T, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2T extends BroadcastReceiver {
    private static byte[] A04;
    private Context A00;
    private AnonymousClass26 A01;
    private C2S A02;
    private String A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{7, 19, 17, -46, 10, 5, 7, 9, 6, 19, 19, 15, -46, 5, 8, 23, -46, 13, 18, 24, 9, 22, 23, 24, 13, 24, 13, 5, 16, -46, 9, 22, 22, 19, 22, 22, 34, 32, -31, 25, 20, 22, 24, 21, 34, 34, 30, -31, 20, 23, 38, -31, 28, 33, 39, 24, 37, 38, 39, 28, 39, 28, 20, 31, -31, 20, 22, 39, 28, 41, 28, 39, 44, 18, 23, 24, 38, 39, 37, 34, 44, 24, 23, -19, -35, -23, -25, -88, -32, -37, -35, -33, -36, -23, -23, -27, -88, -37, -34, -19, -88, -29, -24, -18, -33, -20, -19, -18, -29, -18, -29, -37, -26, -88, -34, -29, -19, -22, -26, -37, -13, -33, -34, -76, -2, 10, 8, -55, 1, -4, -2, 0, -3, 10, 10, 6, -55, -4, -1, 14, -55, 4, 9, 15, 0, 13, 14, 15, 4, 15, 4, -4, 7, -55, -1, 4, 14, 8, 4, 14, 14, 0, -1, 4, 16, 14, -49, 7, 2, 4, 6, 3, 16, 16, 12, -49, 2, 5, 20, -49, 10, 15, 21, 6, 19, 20, 21, 10, 21, 10, 2, 13, -49, 19, 6, 24, 2, 19, 5, 0, 20, 6, 19, 23, 6, 19, 0, 7, 2, 10, 13, 22, 19, 6, 9, 21, 19, -44, 12, 7, 9, 11, 8, 21, 21, 17, -44, 7, 10, 25, -44, 15, 20, 26, 11, 24, 25, 26, 15, 26, 15, 7, 18, -44, 9, 18, 15, 9, 17, 11, 10, -32, 7, 19, 17, -46, 10, 5, 7, 9, 6, 19, 19, 15, -46, 5, 8, 23, -46, 13, 18, 24, 9, 22, 23, 24, 13, 24, 13, 5, 16, -46, 8, 13, 23, 20, 16, 5, 29, 9, 8, 43, 55, 53, -10, 46, 41, 43, 45, 42, 55, 55, 51, -10, 41, 44, 59, -10, 49, 54, 60, 45, 58, 59, 60, 49, 60, 49, 41, 52, -10, 49, 53, 56, 58, 45, 59, 59, 49, 55, 54, -10, 52, 55, 47, 47, 45, 44, 2, 11, 23, 21, -42, 14, 9, 11, 13, 10, 23, 23, 19, -42, 9, 12, 27, -42, 17, 22, 28, 13, 26, 27, 28, 17, 28, 17, 9, 20, -42, 26, 13, 31, 9, 26, 12, 6, 18, 16, -47, 9, 4, 6, 8, 5, 18, 18, 14, -47, 4, 7, 22, -47, 12, 17, 23, 8, 21, 22, 23, 12, 23, 12, 4, 15, -47, 6, 15, 12, 6, 14, 8, 7, -72, -60, -62, -125, -69, -74, -72, -70, -73, -60, -60, -64, -125, -74, -71, -56, -125, -66, -61, -55, -70, -57, -56, -55, -66, -55, -66, -74, -63, -125, -74, -72, -55, -66, -53, -66, -55, -50, -76, -71, -70, -56, -55, -57, -60, -50, -70, -71, -52, -40, -42, -105, -49, -54, -52, -50, -53, -40, -40, -44, -105, -54, -51, -36, -105, -46, -41, -35, -50, -37, -36, -35, -46, -35, -46, -54, -43, -105, -37, -50, -32, -54, -37, -51, -93, -56, -44, -46, -109, -53, -58, -56, -54, -57, -44, -44, -48, -109, -58, -55, -40, -109, -50, -45, -39, -54, -41, -40, -39, -50, -39, -50, -58, -47, -109, -53, -50, -45, -50, -40, -51, -60, -58, -56, -39, -50, -37, -50, -39, -34, -97, -63, -51, -53, -116, -60, -65, -63, -61, -64, -51, -51, -55, -116, -65, -62, -47, -116, -57, -52, -46, -61, -48, -47, -46, -57, -46, -57, -65, -54, -116, -62, -57, -47, -53, -57, -47, -47, -61, -62, -104, -80, -68, -70, 123, -77, -82, -80, -78, -81, -68, -68, -72, 123, -82, -79, -64, 123, -74, -69, -63, -78, -65, -64, -63, -74, -63, -74, -82, -71, 123, -65, -78, -60, -82, -65, -79, -84, -64, -78, -65, -61, -78, -65, -84, -64, -62, -80, -80, -78, -64, -64, -25, -13, -15, -78, -22, -27, -25, -23, -26, -13, -13, -17, -78, -27, -24, -9, -78, -19, -14, -8, -23, -10, -9, -8, -19, -8, -19, -27, -16, -78, -10, -23, -5, -27, -10, -24, -29, -9, -23, -10, -6, -23, -10, -29, -22, -27, -19, -16, -7, -10, -23, -66, -80, -68, -70, 123, -77, -82, -80, -78, -81, -68, -68, -72, 123, -82, -79, -64, 123, -74, -69, -63, -78, -65, -64, -63, -74, -63, -74, -82, -71, 123, -65, -78, -60, -82, -65, -79, -84, -64, -78, -65, -61, -78, -65, -84, -64, -62, -80, -80, -78, -64, -64, -121, 27, 39, 37, -26, 30, 25, 27, 29, 26, 39, 39, 35, -26, 25, 28, 43, -26, 33, 38, 44, 29, 42, 43, 44, 33, 44, 33, 25, 36, -26, 29, 42, 42, 39, 42, -14, -40, -37, -25, -27, -90, -34, -39, -37, -35, -38, -25, -25, -29, -90, -39, -36, -21, -90, -31, -26, -20, -35, -22, -21, -20, -31, -20, -31, -39, -28, -90, -31, -27, -24, -22, -35, -21, -21, -31, -25, -26, -90, -28, -25, -33, -33, -35, -36};
    }

    public C2T(Context context, String str, AnonymousClass26 anonymousClass26, C2S c2s) {
        this.A00 = context;
        this.A03 = str;
        this.A02 = c2s;
        this.A01 = anonymousClass26;
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(291, 48, 126) + this.A03);
        intentFilter.addAction(A00(84, 40, 48) + this.A03);
        intentFilter.addAction(A00(543, 40, 20) + this.A03);
        intentFilter.addAction(A00(214, 38, 92) + this.A03);
        intentFilter.addAction(A00(738, 36, 110) + this.A03);
        intentFilter.addAction(A00(35, 49, 105) + this.A03);
        intentFilter.addAction(A00(460, 37, 31) + this.A03);
        intentFilter.addAction(A00(686, 52, 3) + this.A03);
        intentFilter.addAction(A00(634, 52, 58) + this.A03);
        intentFilter.addAction(A00(497, 46, 27) + this.A03);
        C02784w.A00(this.A00).A06(this, intentFilter);
    }

    public final void A03() {
        try {
            C02784w.A00(this.A00).A05(this);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C2T c2t = this;
        String str = intent.getAction().split(A00(774, 1, 84))[0];
        char c = c2t.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (str != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    str = str;
                    if (!A00(375, 37, 89).equals(str)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2t = c2t;
                    c2t.A02.A5Y(c2t.A01, null, true);
                    c = 3;
                    break;
                case 6:
                    str = str;
                    if (!A00(124, 39, 81).equals(str)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c2t = c2t;
                    c2t.A02.A5Z(c2t.A01);
                    c = 3;
                    break;
                case '\b':
                    str = str;
                    if (!A00(252, 39, 90).equals(str)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c2t = c2t;
                    c2t.A02.A5a(c2t.A01);
                    c = 3;
                    break;
                case '\n':
                    str = str;
                    if (!A00(775, 47, 46).equals(str)) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c2t = c2t;
                    c2t.A02.A5d(c2t.A01);
                    c = 3;
                    break;
                case '\f':
                    str = str;
                    if (!A00(0, 35, 90).equals(str)) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c2t = c2t;
                    c2t.A02.A5c(c2t.A01, AdError.INTERNAL_ERROR);
                    c = 3;
                    break;
                case 14:
                    str = str;
                    if (!A00(412, 48, 11).equals(str)) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c2t = c2t;
                    c2t.A02.onInterstitialActivityDestroyed();
                    c = 3;
                    break;
                case 16:
                    str = str;
                    if (!A00(339, 36, 94).equals(str)) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c2t = c2t;
                    c2t.A02.A5e();
                    c = 3;
                    break;
                case 18:
                    str = str;
                    if (!A00(583, 51, 3).equals(str)) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c2t = c2t;
                    c2t.A02.A5g();
                    c = 3;
                    break;
                case 20:
                    str = str;
                    if (!A00(163, 51, 87).equals(str)) {
                        c = 3;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c2t = c2t;
                    c2t.A02.A5f();
                    c = 3;
                    break;
            }
        }
    }
}
