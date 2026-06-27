package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0571Gj implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 69);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{51, 60, 54, 32, 61, 59, 54, 124, 58, 51, 32, 54, 37, 51, 32, 55, 124, 61, 34, 55, 60, 53, 62, 55, 33, 124, 51, 55, 34, 2, 19, 19, 60, 20, 10, 7, 4, 6, 23, 16, 94, 81, 91, 77, 80, 86, 91, 17, 76, 80, 89, 75, 72, 94, 77, 90, 17, 94, 79, 79, 96, 72, 86, 91, 88, 90, 75, 76, 123, 100, 113, 122, 75, 115, 120, 113, 103, 75, 117, 113, 100, 20, 15, 10, 15, 14, 22, 15};
    }

    public C0571Gj(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0571Gj c0571Gj = this;
        char c = Build.VERSION.SDK_INT < 18 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c0571Gj = c0571Gj;
                    c0571Gj.A00.A02(A00(29, 11, 38), A00(81, 7, 36));
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0571Gj = c0571Gj;
                    c0571Gj.A00.A02(A00(68, 13, 81), A00(81, 7, 36));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0571Gj = c0571Gj;
                    c0571Gj.A00.A03(A00(68, 13, 81), Boolean.valueOf(c0571Gj.A00.A02.hasSystemFeature(A00(0, 29, 23))));
                    c = 5;
                    break;
                case 7:
                    c0571Gj = c0571Gj;
                    c0571Gj.A00.A03(A00(29, 11, 38), Boolean.valueOf(c0571Gj.A00.A02.hasSystemFeature(A00(40, 28, 122))));
                    c = 3;
                    break;
            }
        }
    }
}
