package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2x, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02272x implements Serializable {
    private static byte[] A02 = null;
    private static final long serialVersionUID = 4559450202335985006L;
    private final String A00;
    private final String A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 103);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-31, -42, -31, -39, -46, -52, -31, -46, -27, -31, 7, 18, 14, 11, 31, 17, 15, 9, 20, 9, 13, 5, 18, -1, 20, 5, 24, 20};
    }

    private C02272x() {
        this.A00 = A01(10, 0, 118);
        this.A01 = A01(10, 0, 118);
    }

    private C02272x(String str, String str2) {
        this.A00 = str;
        this.A01 = str2;
    }

    public static C02272x A00(@Nullable JSONObject jSONObject) {
        C02272x c02272x = null;
        char c = jSONObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02272x = new C02272x();
                    c = 3;
                    break;
                case 3:
                    return c02272x;
                case 4:
                    jSONObject = jSONObject;
                    c02272x = new C02272x(jSONObject.optString(A01(18, 10, 57)), jSONObject.optString(A01(0, 10, 6)));
                    c = 3;
                    break;
            }
        }
    }

    public final String A03() {
        return this.A01;
    }

    public final String A04(String str) {
        C02272x c02272x = this;
        String strReplace = null;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02272x = c02272x;
                    strReplace = c02272x.A00;
                    c = 3;
                    break;
                case 3:
                    return strReplace;
                case 4:
                    c02272x = c02272x;
                    str = str;
                    strReplace = c02272x.A00.replace(A01(10, 8, 69), str);
                    c = 3;
                    break;
            }
        }
    }
}
