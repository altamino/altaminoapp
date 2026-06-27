package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BW {
    private static byte[] A01;
    private static final String[] A02;
    private final float[] A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{113, 81, 66, 52, 26};
    }

    static {
        A01();
        A02 = new String[]{A00(3, 1, 84), A00(0, 1, 16), A00(1, 1, 51), A00(4, 1, 117)};
    }

    public BW(float[] fArr) {
        this.A00 = fArr;
    }

    private final float[] A02() {
        return this.A00;
    }

    public final int A03() {
        return this.A00.length * 4;
    }

    public final JSONObject A04(JSONObject jsonObject) throws JSONException {
        BW bw = this;
        JSONObject jSONObject = new JSONObject();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bw = bw;
                    if (i >= bw.A00.length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (i >= A02.length) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    bw = bw;
                    jSONObject = jSONObject;
                    jSONObject.put(A02[i], bw.A00[i]);
                    c = 5;
                    break;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    JSONObject jsonObject2 = jsonObject;
                    jsonObject2.put(A00(2, 1, 44), jSONObject);
                    return jsonObject2;
            }
        }
    }

    public final boolean A05(BW bw) {
        BW bw2 = this;
        int i = 0;
        boolean z = false;
        float[] fArrA02 = bw.A02();
        char c = fArrA02.length != bw2.A00.length ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    fArrA02 = fArrA02;
                    if (i >= fArrA02.length) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    bw2 = bw2;
                    fArrA02 = fArrA02;
                    if (Math.abs(bw2.A02()[i] - fArrA02[i]) > C0430Ay.A01()) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    i++;
                    c = 4;
                    break;
                case 7:
                    z = true;
                    c = 2;
                    break;
            }
        }
    }
}
