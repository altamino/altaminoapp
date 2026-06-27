package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import io.agora.rtc.Constants;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FR implements FQ {
    private static byte[] A01;
    private static final String A02;
    private final Context A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{89, 81, 65, 68, 70, 65, 85, 75, 73, 80, 67, 78, 65, 86, 91, 82, 71, 10, 23, 28, 7, 12, 13, 28, 13, 11, 28, 17, 23, 22, 7, 31, 23, 7, 27, 17, 15, 22, 9, 20, 7, 12, 9, 28, 9, 7, 20, 23, 15, 15, 17, 22, 15, 58, 50, 34, 37, 39, 34, 45, 54, 50, 49, 34, 39, 36, 55, 36, 56, 107, 86, 88, 99, 103, 92, 98, 97, 19, 85, 104, 92, 95, 87, 92, 97, 90, 19, 57, 52, 65, 19, 95, 98, 90, 90, 92, 97, 90, 19, 61, 70, 66, 65, 75, 67, 51, 54, 56, 51, 57, 74, 57, 66, 72, 51, 72, 77, 68, 57, 8, 0, -16, -13, -11, -16, -10, 7, -10, -1, 5, -16, -6, -11, 64, 56, 40, 43, 45, 40, 42, 57, 57, 40, 60, 46, 60, 60, 50, 56, 55, 40, 50, 45, 27, 19, 3, 6, 8, 3, 20, 22, 19, 8, 25, 7, 24, 3, 24, 29, 20, 9, 50, 42, 26, 29, 31, 26, 32, 51, 30, 32, 43, 47, 36, 42, 41};
    }

    static {
        A01();
        A02 = FR.class.getSimpleName();
    }

    public FR(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.FQ
    public final void A4V(String str, String str2, String str3, String str4, String str5, String str6, @Nullable String str7) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(119, 14, 23), str);
            jSONObject.put(A00(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 18, 42), str2);
            jSONObject.put(A00(103, 16, 90), str3);
            jSONObject.put(A00(133, 20, 79), str4);
            jSONObject.put(A00(0, 17, 104), str5);
            jSONObject.put(A00(53, 15, 73), str6);
            jSONObject.put(A00(171, 15, 65), str7);
            PA pa = new PA(jSONObject.toString());
            pa.A03(1);
            P7.A07(this.A00, A00(17, 36, 46), P8.A0U, pa);
        } catch (JSONException e) {
            Log.e(A02, A00(68, 35, 121), e);
        }
    }
}
