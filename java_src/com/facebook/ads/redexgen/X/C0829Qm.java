package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0829Qm extends AnonymousClass27 {
    private static byte[] A02;
    public final /* synthetic */ int A00;
    public final /* synthetic */ C0830Qn A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{-87, -36, -51, -51, -52, -39, -48, -43, -50, -121, -48, -43, -53, -52, -51, -48, -43, -48, -37, -52, -45, -32};
    }

    public C0829Qm(C0830Qn c0830Qn, int i) {
        this.A01 = c0830Qn;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0829Qm c0829Qm = this;
        char c = c0829Qm.A01.A00.A08 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0829Qm = c0829Qm;
                    if (c0829Qm.A01.A00.A08.getState() != EnumC03216q.A02) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0829Qm = c0829Qm;
                    if (c0829Qm.A01.A00.A08.getCurrentPositionInMillis() != c0829Qm.A00) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0829Qm = c0829Qm;
                    c0829Qm.A01.A00.A0O.removeCallbacksAndMessages(null);
                    c0829Qm.A01.A00.A0f(A00(0, 22, 9));
                    c = 2;
                    break;
            }
        }
    }
}
