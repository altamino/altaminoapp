package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JJ {
    private static byte[] A05;
    private JK A01;

    @Nullable
    private String A02;

    @Nullable
    private String A03;
    private int A00 = 0;
    private List<JH> A04 = new ArrayList();

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
        A05 = new byte[]{18, 35};
    }

    public JJ(JK jk, @Nullable String str, @Nullable String str2) {
        this.A01 = jk;
        this.A03 = str;
        this.A02 = str2;
    }

    public final int A02() {
        return this.A04.size();
    }

    public final long A03() {
        JJ jj = this;
        long jA0C = 0;
        char c = jj.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jj = jj;
                    jA0C = jj.A01.A0C() + jj.A01.A03();
                    c = 3;
                    break;
                case 3:
                    return jA0C;
                case 4:
                    jA0C = -1;
                    c = 3;
                    break;
            }
        }
    }

    public final JH A04() {
        JJ jj = this;
        JH jh = null;
        char c = jj.A00 < jj.A04.size() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jj = jj;
                    jj.A00++;
                    jh = jj.A04.get(jj.A00 - 1);
                    c = 3;
                    break;
                case 3:
                    return jh;
                case 4:
                    jh = null;
                    c = 3;
                    break;
            }
        }
    }

    public final JK A05() {
        return this.A01;
    }

    @Nullable
    public final String A06() {
        return this.A02;
    }

    @Nullable
    public final String A07() {
        JJ jj = this;
        String strOptString = null;
        char c = jj.A00 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    jj = jj;
                    if (jj.A00 > jj.A04.size()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    jj = jj;
                    strOptString = jj.A04.get(jj.A00 - 1).A05().optString(A00(0, 2, 109));
                    c = 4;
                    break;
                case 4:
                    return strOptString;
                case 5:
                    strOptString = null;
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    public final String A08() {
        return this.A03;
    }

    public final void A09(JH jh) {
        this.A04.add(jh);
    }

    public final boolean A0A() {
        JJ jj = this;
        boolean z = false;
        char c = jj.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    jj = jj;
                    if (OO.A00() <= jj.A01.A0C() + jj.A01.A03()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
