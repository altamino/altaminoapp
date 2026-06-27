package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3B implements Serializable {
    private static byte[] A0C = null;
    private static final long serialVersionUID = 1;
    private final int A00;
    private final int A01;
    private final C02172n A02;
    private final C02212r A03;
    private final C02252v A04;
    private final C02292z A05;
    private final AnonymousClass38 A06;
    private final C3G A07;
    private final String A08;
    private final String A09;
    private final String A0A;
    private final boolean A0B;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A0C = new byte[]{108, 123, 105, 127, 108, 122, 123, 122, 65, 104, 119, 122, 123, 113, 56, 63, 37, 52, 35, 34, 37, 56, 37, 56, 48, 61};
    }

    private C3B(String str, String str2, AnonymousClass38 anonymousClass38, C02252v c02252v, C02292z c02292z, C02172n c02172n, C02212r c02212r, String str3, C3G c3g, boolean z, int i, int i2) {
        this.A0A = str;
        this.A08 = str2;
        this.A06 = anonymousClass38;
        this.A04 = c02252v;
        this.A05 = c02292z;
        this.A02 = c02172n;
        this.A03 = c02212r;
        this.A09 = str3;
        this.A0B = z;
        this.A07 = c3g;
        this.A01 = i;
        this.A00 = i2;
    }

    public static C3B A00(AnonymousClass31 anonymousClass31) {
        AnonymousClass32 anonymousClass32 = anonymousClass31.A0H().get(0);
        return new C3B(anonymousClass31.A0G(), anonymousClass31.A0D(), anonymousClass31.A0B(), anonymousClass32.A04(), anonymousClass32.A05(), anonymousClass31.A09(), anonymousClass32.A03(), A02(14, 12, 14), anonymousClass31.A0C(), anonymousClass31.A0H().get(0).A07(), anonymousClass31.A0H().get(0).A03().A02(), anonymousClass31.A04());
    }

    public static C3B A01(C3D c3d) {
        return new C3B(c3d.A0P(), c3d.A0C(), c3d.A0N(), c3d.A0I(), c3d.A0J(), c3d.A0G(), c3d.A0H(), A02(0, 14, 65), c3d.A0O(), true, c3d.A0H().A02(), c3d.A0F());
    }

    public final int A04() {
        return this.A00;
    }

    public final C02172n A05() {
        return this.A02;
    }

    public final C02212r A06() {
        return this.A03;
    }

    public final C02252v A07() {
        return this.A04;
    }

    public final C02292z A08() {
        return this.A05;
    }

    public final AnonymousClass38 A09() {
        return this.A06;
    }

    public final C3G A0A() {
        return this.A07;
    }

    public final String A0B() {
        return this.A08;
    }

    public final String A0C() {
        return this.A09;
    }

    public final String A0D() {
        return this.A0A;
    }
}
