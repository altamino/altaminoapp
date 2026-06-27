package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BY {
    private static byte[] A07;
    private final float A00;
    private final float A01;
    private final float A02;
    private final int A03;
    private final int A04;
    private final int A05;
    private final float[] A06;

    static {
        A07();
    }

    private static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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

    private static void A07() {
        A07 = new byte[]{118, 22, 18, 28, 4, 18, 3, 7, 102, 123, 20, 19, 53, 46, 46, 101, 27, 27};
    }

    public BY(int i, int i2, int i3, float[] fArr, float f, float f2, float f3) {
        this.A05 = i;
        this.A03 = i2;
        this.A04 = i3;
        this.A06 = fArr;
        this.A02 = f;
        this.A01 = f2;
        this.A00 = f3;
    }

    private final float A00() {
        return this.A00;
    }

    private final float A01() {
        return this.A01;
    }

    private final float A02() {
        return this.A02;
    }

    private final int A03() {
        return this.A03;
    }

    private final int A04() {
        return this.A04;
    }

    private final int A05() {
        return this.A05;
    }

    private final float[] A08() {
        return this.A06;
    }

    public final int A09() {
        return 32;
    }

    public final JSONObject A0A(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A06(5, 3, 57), this.A05);
        jSONObject2.put(A06(8, 2, 77), this.A03);
        jSONObject2.put(A06(16, 2, 48), this.A04);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(A06(15, 1, 66), FH.A00(this.A06[0]));
        jSONObject3.put(A06(0, 1, 80), FH.A00(this.A06[1]));
        jSONObject2.put(A06(3, 2, 55), jSONObject3);
        jSONObject2.put(A06(10, 2, 63), FH.A00(this.A02));
        jSONObject2.put(A06(1, 2, 61), FH.A00(this.A01));
        jSONObject2.put(A06(12, 2, 30), FH.A00(this.A00));
        jSONObject.put(A06(14, 1, 7), jSONObject2);
        return jSONObject;
    }

    public final boolean A0B(BY by) {
        BY by2 = this;
        boolean z = true;
        boolean z2 = false;
        char c = by2.A05() == by.A05() ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    by2 = by2;
                    by = by;
                    if (by2.A03() != by.A03()) {
                        c = '\n';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    by2 = by2;
                    by = by;
                    if (by2.A04() != by.A04()) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    by2 = by2;
                    by = by;
                    z2 = false;
                    if (Math.abs(by2.A08()[0] - by.A08()[0]) >= C0430Ay.A01()) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    by2 = by2;
                    by = by;
                    if (Math.abs(by2.A08()[z ? 1 : 0] - by.A08()[z ? 1 : 0]) >= C0430Ay.A01()) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    by2 = by2;
                    by = by;
                    if (Math.abs(by2.A02() - by.A02()) >= C0430Ay.A01()) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    by2 = by2;
                    by = by;
                    if (Math.abs(by2.A01() - by.A01()) >= C0430Ay.A01()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    by2 = by2;
                    by = by;
                    if (Math.abs(by2.A00() - by.A00()) >= C0430Ay.A01()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    return z;
                case '\n':
                    z = z2;
                    c = '\t';
                    break;
            }
        }
    }
}
