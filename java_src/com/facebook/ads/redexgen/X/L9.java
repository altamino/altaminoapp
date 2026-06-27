package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.internal.api.NativeAdImageApi;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class L9 implements NativeAdImageApi {
    private static byte[] A03;
    private final int A00;
    private final int A01;
    private final String A02;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
        A03 = new byte[]{86, 72, 69, 85, 73, 25, 30, 0, 13, 0, 12, 2, 13, 17};
    }

    private L9(String str, int i, int i2) {
        this.A02 = str;
        this.A01 = i;
        this.A00 = i2;
    }

    @Nullable
    public static L9 A00(JSONObject jSONObject) {
        String strOptString = null;
        L9 l9 = null;
        int mWidth = jSONObject == null ? 2 : 3;
        while (true) {
            switch (mWidth) {
                case 2:
                    return l9;
                case 3:
                    jSONObject = jSONObject;
                    strOptString = jSONObject.optString(A01(5, 3, 50));
                    if (strOptString == null) {
                        mWidth = 2;
                        break;
                    } else {
                        mWidth = 4;
                        break;
                    }
                case 4:
                    jSONObject = jSONObject;
                    strOptString = strOptString;
                    int iOptInt = jSONObject.optInt(A01(0, 5, 127), 0);
                    int mWidth2 = jSONObject.optInt(A01(8, 6, 59), 0);
                    l9 = new L9(strOptString, iOptInt, mWidth2);
                    mWidth = 2;
                    break;
            }
        }
    }

    public final int getHeight() {
        return this.A00;
    }

    public final String getUrl() {
        return this.A02;
    }

    public final int getWidth() {
        return this.A01;
    }
}
