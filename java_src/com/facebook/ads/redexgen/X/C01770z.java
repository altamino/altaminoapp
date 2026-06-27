package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0z, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01770z {
    private static byte[] A0A;
    public int A00;
    public int A01;

    @Nullable
    public Integer A02;
    public String A03;
    public String A04;
    public boolean A05;
    public final String A06;
    public final String A07;
    public final String A08;
    public final String A09;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 28);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0A = new byte[]{69, 94, 91, 94, 95, 71, 94};
    }

    public C01770z(C01770z c01770z) {
        this.A04 = A00(0, 0, 84);
        this.A01 = -1;
        this.A00 = -1;
        this.A09 = c01770z.A09;
        this.A08 = c01770z.A08;
        this.A06 = c01770z.A06;
        this.A07 = c01770z.A07;
        this.A02 = c01770z.A02;
        this.A03 = c01770z.A03;
    }

    public C01770z(String str) {
        this.A04 = A00(0, 0, 84);
        this.A01 = -1;
        this.A00 = -1;
        this.A09 = str;
        this.A08 = A00(0, 7, 44);
        this.A06 = A00(0, 7, 44);
        this.A07 = A00(0, 7, 44);
        this.A02 = null;
        this.A03 = A00(0, 7, 44);
    }

    public C01770z(String str, String str2, String str3, String str4, String str5) {
        this.A04 = A00(0, 0, 84);
        this.A01 = -1;
        this.A00 = -1;
        this.A09 = str;
        this.A08 = str2;
        this.A06 = str3;
        this.A07 = str4;
        this.A02 = null;
        this.A03 = str5;
    }
}
