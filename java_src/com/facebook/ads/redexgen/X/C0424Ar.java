package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ar, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0424Ar implements InterfaceC0423Aq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{38, 17, 58, 45, 58, 80, 109, 118, 112, 101, 97, 124, 122, 123, 53, 119, 96, 124, 121, 113, 124, 123, 114, 53, 83, 84, 91, 53, 121, 122, 114, 114, 124, 123, 114, 53, 95, 70, 90, 91, 28, 26, 33, 26, 31, 10, 31, 33, 18, 17, 25, 25, 23, 16, 25, 91, 83, 119, 3, 8, 5, 112, 25, 31, 7, 17, 22, 17, 0};
    }

    static {
        A01();
        A02 = C0424Ar.class.getSimpleName();
    }

    public C0424Ar(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0423Aq
    public final void A4M(String str, String str2, Map<String, String> map, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(61, 1, 57), str);
            jSONObject.put(A00(0, 1, 108), str2);
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
            jSONObject.put(A00(62, 2, 83), jSONObject2.toString());
            jSONObject.put(A00(58, 3, 68), str3);
            jSONObject.put(A00(55, 2, 27), str4);
            jSONObject.put(A00(64, 3, 71), str5);
            jSONObject.put(A00(67, 2, 81), str6);
            jSONObject.put(A00(57, 1, 49), A00(1, 4, 126));
            PA pa = new PA(jSONObject.toString());
            pa.A03(1);
            P7.A07(this.A00, A00(40, 15, 91), 3202, pa);
        } catch (JSONException e) {
            Log.e(A02, A00(5, 35, 48), e);
        }
    }
}
