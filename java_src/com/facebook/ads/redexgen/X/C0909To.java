package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.To, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0909To extends AnonymousClass27 {
    private static byte[] A01;
    public final /* synthetic */ C0910Tp A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{56, 39, 43, 57, 28, 43, 47, 42, 55, 26, 33, 29, 38, 33, 57, 102, 105, 107, 61, 105, 103, 117};
    }

    public C0909To(C0910Tp c0910Tp) {
        this.A00 = c0910Tp;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        this.A00.A00.A0D.A02(KW.A0N, null);
        OY.A0L(this.A00.A00.A02);
        this.A00.A00.A0J(String.format(Locale.US, A00(0, 22, 17), this.A00.A00.A0K));
    }
}
