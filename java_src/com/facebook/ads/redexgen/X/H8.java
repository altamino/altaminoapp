package com.facebook.ads.redexgen.X;

import android.os.Environment;
import java.io.File;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H8 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-52, -44, -36, -45, -56, -37, -42, -39, -58, -55, -38, -37, -58, -38, -49, -56, -39, -52, -53, -58, -51, -42, -45, -53, -52, -39, -9, 4, 4, 1, 4, 112, -76, -75, -80, -77, -94, -88, -90, -22, -37, -38, -40, -23, -37, 33, 19, 24, 14, 25, 33, 29, -56, -7, -6, -39, -18, -25, -8, -21, -22, -52, -11, -14, -22, -21, -8};
    }

    public H8(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            String str = A00(31, 8, 9) + File.separatorChar + A00(39, 6, 63) + File.separatorChar + A00(45, 7, 114) + File.separatorChar + A00(52, 15, 78);
            String str2 = Environment.getExternalStorageDirectory().toString() + File.separatorChar + A00(45, 7, 114) + File.separatorChar + A00(52, 15, 78);
            if (new File(str).exists()) {
                this.A00.A03(A00(0, 26, 47), true);
            } else if (!str.equalsIgnoreCase(str2)) {
                if (new File(str2).exists()) {
                    this.A00.A03(A00(0, 26, 47), true);
                } else {
                    this.A00.A03(A00(0, 26, 47), false);
                }
            }
        } catch (Throwable unused) {
            this.A00.A02(A00(0, 26, 47), A00(26, 5, 90));
        }
    }
}
