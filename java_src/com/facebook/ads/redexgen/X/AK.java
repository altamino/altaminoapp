package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AK implements AJ {
    private static byte[] A02;
    private final AL A00;
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{89, 84, 93, 72, 13, 10, 20};
    }

    private AK(AL al, String str) {
        this.A00 = al;
        this.A01 = str;
    }

    @Nullable
    public static AK A00(JSONObject jSONObject) {
        AK ak = null;
        AL alA00 = AL.A00(jSONObject.optString(A01(0, 4, 38)));
        String strOptString = jSONObject.optString(A01(4, 3, 115));
        char c = alA00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    strOptString = strOptString;
                    if (strOptString != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ak = null;
                    c = 4;
                    break;
                case 4:
                    return ak;
                case 5:
                    alA00 = alA00;
                    strOptString = strOptString;
                    ak = new AK(alA00, strOptString);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final AL A3n() {
        return this.A00;
    }

    public final boolean equals(Object obj) {
        AK that = this;
        AK ak = null;
        boolean zEquals = false;
        char c = that == obj ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zEquals = true;
                    c = 3;
                    break;
                case 3:
                    return zEquals;
                case 4:
                    obj = obj;
                    if (obj == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    that = that;
                    obj = obj;
                    if (that.getClass() != obj.getClass()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    that = that;
                    obj = obj;
                    ak = (AK) obj;
                    if (that.A00 != ak.A00) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    that = that;
                    ak = ak;
                    zEquals = that.A01.equals(ak.A01);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AJ
    public final String getUrl() {
        return this.A01;
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }
}
