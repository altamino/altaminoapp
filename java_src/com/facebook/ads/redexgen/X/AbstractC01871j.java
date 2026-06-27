package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC01871j {
    private static byte[] A04;
    private boolean A00;
    private final Context A01;
    public final AbstractC01881k A02;
    public final C6K A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{10, 46, 49, 51, 38, 52, 52, 42, 48, 47, -31, 45, 48, 40, 40, 38, 37};
    }

    public abstract void A06(Map<String, String> map);

    public AbstractC01871j(Context context, AbstractC01881k abstractC01881k, C6K c6k) {
        this.A01 = context;
        this.A02 = abstractC01881k;
        this.A03 = c6k;
    }

    public final void A02() {
        AbstractC01871j abstractC01871j = this;
        char c = abstractC01871j.A00 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    abstractC01871j = abstractC01871j;
                    if (abstractC01871j.A02 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    abstractC01871j = abstractC01871j;
                    abstractC01871j.A02.A01();
                    c = 5;
                    break;
                case 5:
                    abstractC01871j = abstractC01871j;
                    abstractC01871j.A06(new SN().A04(abstractC01871j.A03).A07());
                    abstractC01871j.A00 = true;
                    NV.A04(abstractC01871j.A01, A00(0, 17, 127));
                    if (abstractC01871j.A02 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    abstractC01871j = abstractC01871j;
                    abstractC01871j.A02.A00();
                    c = 2;
                    break;
            }
        }
    }
}
