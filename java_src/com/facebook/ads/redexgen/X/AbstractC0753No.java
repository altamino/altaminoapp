package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.LinearLayout;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.No, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0753No {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{56, 36, 40, 34, 42, 39, 20, 40, 36, 37, 63, 46, 51, 63};
    }

    private AbstractC0753No() {
    }

    public static LinearLayout A00(Context context, L8 l8, LI li) {
        LinearLayout linearLayout = new LinearLayout(context);
        R1 r1 = new R1(context);
        r1.setText(l8.A12(A01(0, 14, 92)));
        li.A06(r1);
        linearLayout.addView(r1);
        return linearLayout;
    }
}
