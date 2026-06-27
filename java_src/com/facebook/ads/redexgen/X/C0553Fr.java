package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0553Fr implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0557Fv A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-94, -81, -81, -84, -81, -13, 2, 2, -15, 8, -5, 5, -5, -12, -2, -9, -49, -34, -34, -51, -41, -37, -34, -35, -32, -30, -49, -36, -47, -45, -46, -53, -56, -53, -52, -44, -53, -74, -59, -59, -76, -69, -60, -57, -70, -68, -57, -60, -54, -61, -71};
    }

    public C0553Fr(C0557Fv c0557Fv) {
        this.A00 = c0557Fv;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0553Fr c0553Fr = this;
        C0557Fv c0557Fv = null;
        C0557Fv c0557Fv2 = null;
        Integer numA01 = null;
        String strA00 = null;
        boolean z = false;
        String strA002 = null;
        boolean z2 = true;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0553Fr = c0553Fr;
                    c0553Fr.A00.A02(A00(16, 14, 66), A00(30, 7, 49));
                    c0553Fr.A00.A02(A00(5, 11, 102), A00(30, 7, 49));
                    c0553Fr.A00.A02(A00(37, 14, 41), A00(30, 7, 49));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0553Fr = c0553Fr;
                    numA01 = c0553Fr.A00.A01();
                    if (numA01 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0553Fr = c0553Fr;
                    c0553Fr.A00.A02(A00(16, 14, 66), A00(0, 5, 17));
                    c0553Fr.A00.A02(A00(5, 11, 102), A00(0, 5, 17));
                    c0553Fr.A00.A02(A00(37, 14, 41), A00(0, 5, 17));
                    c = 3;
                    break;
                case 6:
                    c0553Fr = c0553Fr;
                    numA01 = numA01;
                    c0553Fr.A00.A03(A00(16, 14, 66), numA01);
                    c0557Fv2 = c0553Fr.A00;
                    strA00 = A00(5, 11, 102);
                    if (numA01.intValue() == 100) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    numA01 = numA01;
                    if (numA01.intValue() != 200) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = z2;
                    c = '\t';
                    break;
                case '\t':
                    c0553Fr = c0553Fr;
                    numA01 = numA01;
                    c0557Fv2 = c0557Fv2;
                    strA00 = strA00;
                    c0557Fv2.A03(strA00, Boolean.valueOf(z));
                    c0557Fv = c0553Fr.A00;
                    strA002 = A00(37, 14, 41);
                    if (numA01.intValue() != 100) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0557Fv = c0557Fv;
                    strA002 = strA002;
                    c0557Fv.A03(strA002, Boolean.valueOf(z2));
                    c = 3;
                    break;
                case 11:
                    z2 = false;
                    c = '\n';
                    break;
                case '\f':
                    z = false;
                    c = '\t';
                    break;
            }
        }
    }
}
