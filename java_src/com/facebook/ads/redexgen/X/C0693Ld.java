package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.shield.NoAutoExceptionHandling;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@NoAutoExceptionHandling
/* renamed from: com.facebook.ads.redexgen.X.Ld, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0693Ld {
    private static byte[] A02;
    public long A00;
    public final /* synthetic */ C0694Le A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{44, 116, 46};
    }

    public C0693Ld(C0694Le c0694Le, long j) {
        this.A01 = c0694Le;
        this.A00 = j;
    }

    public final String toString() {
        return A00(0, 2, 51) + this.A00 + A00(2, 1, 111);
    }
}
