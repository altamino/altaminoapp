package com.facebook.ads.redexgen.X;

import com.narvii.util.http.ApiService;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2o, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02182o implements Serializable {
    private static byte[] A04 = null;
    private static final long serialVersionUID = -1165646029762217510L;
    private final int A00;
    private final int A01;
    private final int A02;
    private final boolean A03;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 29);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{44, 32, 58, 33, 59, 43, 32, 56, 33, 16, 59, 38, 34, 42, 16, 34, 60, 54, 51, 42, 53, 35, 25, 39, 40, 47, 43, 39, 50, 47, 41, 40, 25, 34, 51, 52, 39, 50, 47, 41, 40, 25, 43, 53, 1, 26, 29, 7, 30, 22, 45, 1, 26, 29, 5, 45, 0, 19, 6, 27, 28, 21, 81, 80, 83, 84, 64, 89, 65, 106, 84, 81, 106, 92, 91, 81, 80, 77};
    }

    private C02182o(int i, int i2, int i3, boolean z) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        this.A03 = z;
    }

    public static C02182o A00(JSONObject jSONObject) {
        return new C02182o(jSONObject.optInt(A01(0, 17, 82), ApiService.DEFAULT_GET_TIMEOUT_MS), jSONObject.optInt(A01(17, 27, 91), 600), jSONObject.optInt(A01(62, 16, 40)), jSONObject.optBoolean(A01(44, 18, 111), false));
    }

    public final int A03() {
        return this.A00;
    }

    public final int A04() {
        return this.A01;
    }

    public final int A05() {
        return this.A02;
    }

    public final boolean A06() {
        return this.A03;
    }
}
