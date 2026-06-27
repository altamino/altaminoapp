package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.internal.api.NativeAdRatingApi;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class LH implements NativeAdRatingApi {
    private static byte[] A02;
    private final double A00;
    private final double A01;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 94);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{42, 58, 56, 53, 60, 57, 46, 35, 58, 42};
    }

    private LH(double d, double d2) {
        this.A01 = d;
        this.A00 = d2;
    }

    @Nullable
    public static LH A00(JSONObject jSONObject) {
        double dOptDouble = 0.0d;
        double dOptDouble2 = 0.0d;
        LH lh = null;
        char c = jSONObject == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return lh;
                case 3:
                    jSONObject = jSONObject;
                    dOptDouble2 = jSONObject.optDouble(A01(5, 5, 17), 0.0d);
                    dOptDouble = jSONObject.optDouble(A01(0, 5, 7), 0.0d);
                    if (dOptDouble2 == 0.0d) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (dOptDouble == 0.0d) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    lh = new LH(dOptDouble2, dOptDouble);
                    c = 2;
                    break;
            }
        }
    }

    public final double getScale() {
        return this.A00;
    }

    public final double getValue() {
        return this.A01;
    }
}
