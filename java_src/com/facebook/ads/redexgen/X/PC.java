package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PC implements PB {
    private static byte[] A01;
    private final Context A00;

    static {
        A02();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{83, 66, 69, 86, 67, 94, 88, 89, 56, 63, 42, 57, 63, 20, 63, 34, 38, 46, 28, 25, 5, 6, 8, 13, 54, 26, 0, 19, 12, 117, 86, 94, 94, 80, 87, 94, 25, 119, 92, 77, 78, 86, 75, 82, 25, 124, 79, 92, 87, 77, 106, 125, 125, 96, 125, 56, 41, 49, 36, 39, 41, 44, 23, 59, 33, 50, 45, 89, 82, 67, 64, 88, 69, 92, 33, 61, 61, 57, 22, 58, 61, 40, 61, 60, 58, 22, 42, 38, 45, 44};
    }

    public PC(Context context) {
        this.A00 = context.getApplicationContext();
    }

    private final JSONObject A01(long j, long j2, long j3, long j4, int i, @Nullable Exception exc) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(8, 10, 42), j);
            jSONObject.put(A00(0, 8, 86), j2 / 1000.0d);
            jSONObject.put(A00(55, 12, 41), j3);
            jSONObject.put(A00(18, 11, 8), j4);
            jSONObject.put(A00(74, 16, 40), i);
            if (exc != null) {
                jSONObject.put(A00(50, 5, 110), exc.getMessage());
            }
        } catch (JSONException e) {
            P7.A0F(e);
        }
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.PB
    public final void A4K(long j, long j2, long j3, long j4, int i, @Nullable Exception exc) {
        PA pa = new PA(A00(29, 21, 88));
        pa.A03(1);
        pa.A05(A01(j, j2, j3, j4, i, exc));
        P7.A09(this.A00, A00(67, 7, 86), P8.A1P, pa);
    }
}
