package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4o, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02704o {
    private static byte[] A05;
    public C5V A00;
    public EnumC02644i A01;
    public String A02;
    public String A03;
    public byte[] A04;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A05 = new byte[]{37};
    }

    public AbstractC02704o(String str, C3U c3u, C5V c5v) {
        this.A03 = A00(1, 0, 65);
        if (str != null) {
            this.A03 = str;
        }
        if (c3u != null && !c3u.A06().isEmpty()) {
            this.A03 += A00(0, 1, 90) + c3u.A06();
        }
        this.A00 = c5v;
    }

    public final C5V A02() {
        return this.A00;
    }

    public final EnumC02644i A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A02;
    }

    public final String A05() {
        return this.A03;
    }

    public final byte[] A06() {
        return this.A04;
    }
}
