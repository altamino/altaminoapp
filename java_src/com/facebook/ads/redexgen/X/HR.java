package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HR implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HT A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{88, 90, 87, 92, 89, 80, 106, 81, 84, 65, 84, 106, 80, 91, 84, 87, 89, 80, 81, 0, 15, 5, 19, 14, 8, 5, 79, 17, 4, 19, 12, 8, 18, 18, 8, 14, 15, 79, 32, 34, 34, 36, 50, 50, 62, 47, 36, 53, 54, 46, 51, 42, 62, 50, 53, 32, 53, 36, 56, 57, 9, 38, 51, 36, 59, 63, 37, 37, 63, 57, 56, 88, 79, 79, 82, 79, 2, 25, 28, 25, 24, 0, 25, 73, 70, 76, 90, 71, 65, 76, 6, 88, 77, 90, 69, 65, 91, 91, 65, 71, 70, 6, 101, 103, 108, 97, 110, 113, 119, 120, 96, 103, 102, 109, 119, 123, 124, 105, 124, 109};
    }

    public HR(HT ht) {
        this.A00 = ht;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        HR hr = this;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hr = hr;
                    hr.A00.A02(A00(0, 19, 45), A00(76, 7, 111));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    hr = hr;
                    if (!hr.A00.A06(hr.A00.A00, A00(19, 39, 121))) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    hr = hr;
                    if (!hr.A00.A06(hr.A00.A00, A00(83, 37, 48))) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    hr = hr;
                    hr.A00.A02(A00(0, 19, 45), A00(58, 13, 78));
                    c = 3;
                    break;
                case 7:
                    hr = hr;
                    if (hr.A00.A01 != null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    hr = hr;
                    hr.A00.A02(A00(0, 19, 45), A00(71, 5, 37));
                    c = 3;
                    break;
                case '\t':
                    hr = hr;
                    hr.A00.A03(A00(0, 19, 45), Boolean.valueOf(hr.A00.A01.isDataEnabled()));
                    c = 3;
                    break;
            }
        }
    }
}
