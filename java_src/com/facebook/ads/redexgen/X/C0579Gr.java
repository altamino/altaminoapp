package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0579Gr implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 38);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{33, 48, 50, 58, 14, 39, 52, 35, 34, 56, 62, 63, 14, 63, 48, 60, 52, 70, 81, 81, 76, 81, 117, 100, 102, 110, 90, 103, 100, 118, 96, 90, 119, 96, 115, 108, 118, 108, 106, 107, 90, 102, 106, 97, 96, 6, 29, 24, 29, 28, 4, 29, 87, 70, 70, 105, 90, 87, 69, 66, 105, 67, 70, 82, 87, 66, 83, 98, 115, 113, 121, 77, 100, 119, 96, 97, 123, 125, 124, 77, 113, 125, 118, 119, 81, 64, 64, 111, 89, 94, 67, 68, 81, 92, 92, 111, 84, 81, 68, 85};
    }

    public C0579Gr(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0579Gr c0579Gr = this;
        char c = c0579Gr.A00.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0579Gr = c0579Gr;
                    c0579Gr.A00.A02(A00(84, 16, 22), A00(17, 5, 5));
                    c0579Gr.A00.A02(A00(52, 15, 16), A00(17, 5, 5));
                    c0579Gr.A00.A02(A00(67, 17, 52), A00(17, 5, 5));
                    c0579Gr.A00.A02(A00(0, 17, 119), A00(17, 5, 5));
                    c0579Gr.A00.A02(A00(22, 23, 35), A00(17, 5, 5));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0579Gr = c0579Gr;
                    c0579Gr.A00.A03(A00(84, 16, 22), Long.valueOf(c0579Gr.A00.A01.firstInstallTime));
                    c0579Gr.A00.A03(A00(52, 15, 16), Long.valueOf(c0579Gr.A00.A01.lastUpdateTime));
                    c0579Gr.A00.A03(A00(67, 17, 52), Integer.valueOf(c0579Gr.A00.A01.versionCode));
                    c0579Gr.A00.A03(A00(0, 17, 119), c0579Gr.A00.A01.versionName);
                    if (Build.VERSION.SDK_INT >= 22) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0579Gr = c0579Gr;
                    c0579Gr.A00.A02(A00(22, 23, 35), A00(45, 7, 85));
                    c = 3;
                    break;
                case 6:
                    c0579Gr = c0579Gr;
                    c0579Gr.A00.A03(A00(22, 23, 35), Integer.valueOf(c0579Gr.A00.A01.baseRevisionCode));
                    c = 3;
                    break;
            }
        }
    }
}
