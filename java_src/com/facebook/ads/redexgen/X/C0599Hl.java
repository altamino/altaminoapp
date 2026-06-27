package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hl, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0599Hl implements C1O {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
        A00 = new byte[]{35, 39, 43, 45, 47};
    }

    @Override // com.facebook.ads.redexgen.X.C1O
    public final void A4A(Throwable th) {
        P7.A0E(A00(0, 5, 10), P8.A1C, new PA(th));
    }

    @Override // com.facebook.ads.redexgen.X.C1O
    public final void A4G(Throwable th) {
        P7.A0E(A00(0, 5, 10), P8.A1E, new PA(th));
    }

    @Override // com.facebook.ads.redexgen.X.C1O
    public final void A4K(long j, long j2, long j3, long j4, int i, @Nullable Exception exc) {
        Context contextA00 = IF.A00();
        if (contextA00 != null) {
            new PC(contextA00).A4K(j, j2, j3, j4, i, exc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1O
    public final void A6l(String str, int i, @Nullable String str2, @Nullable Integer num, @Nullable Long l, C01770z c01770z) {
        IA.A07(c01770z.A06, c01770z.A08, c01770z.A09, c01770z.A07, c01770z.A03, i, str2, num, l, null);
    }

    @Override // com.facebook.ads.redexgen.X.C1O
    public final void A6m(String str, boolean z, C01770z c01770z) {
        IA.A05(new I9(c01770z.A06, c01770z.A08, c01770z.A07, c01770z.A03, str), z);
    }
}
