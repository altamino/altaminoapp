package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TF {
    private static byte[] A06;
    private boolean A00 = false;
    private final int A01;

    @Nullable
    private final C0797Pg A02;
    private final T3 A03;
    private final String A04;
    private final boolean A05;

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A06 = new byte[]{-64, -40, -54, -56, -40, -62};
    }

    public TF(int i, String str, boolean z, @Nullable C0797Pg c0797Pg, T3 t3) {
        this.A01 = i;
        this.A04 = str;
        this.A05 = z;
        this.A02 = c0797Pg;
        this.A03 = t3;
    }

    private int A00(int i, int i2) {
        TF tf = this;
        int iMin = 0;
        char c = tf.A01 <= 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iMin = 0;
                    c = 3;
                    break;
                case 3:
                    return iMin;
                case 4:
                    tf = tf;
                    iMin = (int) ((Math.min(tf.A01 * 1000.0f, i2) - i) / 1000.0f);
                    c = 3;
                    break;
            }
        }
    }

    private void A02() {
        TF tf = this;
        char c = tf.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    tf = tf;
                    tf.A02.setToolbarActionMessage(A01(6, 0, 96));
                    c = 3;
                    break;
                case 3:
                    tf = tf;
                    if (!tf.A00) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    tf = tf;
                    tf.A03.A5O();
                    tf.A00 = true;
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    private void A04(int i) {
        if (this.A02 == null) {
            return;
        }
        this.A02.setToolbarActionMessage(this.A04.replace(A01(0, 6, 70), String.valueOf(i)));
    }

    public final void A05(int i, int i2) {
        TF tf = this;
        int iA00 = 0;
        char c = !tf.A06() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    tf = tf;
                    iA00 = tf.A00(i, i2);
                    if (tf.A01 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (iA00 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tf = tf;
                    tf.A04(iA00);
                    c = 2;
                    break;
                case 6:
                    tf = tf;
                    if (tf.A01 <= 0) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    tf = tf;
                    tf.A02();
                    c = 2;
                    break;
            }
        }
    }

    public final boolean A06() {
        TF tf = this;
        boolean z = false;
        char c = tf.A05 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    tf = tf;
                    if (tf.A01 <= 0) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    tf = tf;
                    if (!tf.A00) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }
}
