package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SN {
    private static byte[] A01;
    private final Map<String, String> A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{117, 110, 116, 98, 105, 68, 89, 85, 83, 64, 126, 73, 72, 79, 85, 82, 123, 126, 69, 105, 127, 118, 127, 121, 110, 115, 117, 116, 52, 46, 2, 62, 36, 50, 60};
    }

    public SN() {
        this.A00 = new HashMap();
    }

    public SN(Map<String, String> extraData) {
        this.A00 = extraData;
    }

    public final SN A02(KT kt) {
        this.A00.put(A00(16, 12, 110), C0760Nv.A01(kt.A02()));
        return this;
    }

    public final SN A03(@Nullable OP op) {
        if (op != null) {
            this.A00.put(A00(0, 5, 117), C0760Nv.A01(op.A04()));
        }
        return this;
    }

    public final SN A04(@Nullable C6K c6k) {
        if (c6k != null) {
            this.A00.putAll(c6k.A0S());
        }
        return this;
    }

    public final SN A05(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            this.A00.put(A00(5, 11, 85), str);
        }
        return this;
    }

    public final SN A06(boolean z) {
        this.A00.put(A00(28, 7, 41), String.valueOf(z));
        return this;
    }

    public final Map<String, String> A07() {
        return this.A00;
    }
}
