package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ap, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0422Ap implements InterfaceC0421Ao {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{70, 61, 55, 40, 26, 41, 16, 67, 46, 48, 59, 63, 52, 58, 57, -21, 45, 64, 52, 55, 47, 52, 57, 50, -21, 17, 12, 25, -21, 55, 58, 50, 50, 52, 57, 50, -21, 21, 30, 26, 25, -71, -69, -74, -69, -72, -53, -72, -74, -61, -58, -66, -66, -64, -59, -66, 38, 55, -41, -34, -39, 66, 68, 53, 71, 61, 56};
    }

    static {
        A01();
        A02 = C0422Ap.class.getSimpleName();
    }

    public C0422Ap(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0421Ao
    public final void A4U(String str, String str2, int i, int i2, int i3, JSONObject jSONObject, EnumC0526Eq enumC0526Eq) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(A00(63, 4, 125), str);
            jSONObject2.put(A00(58, 3, 30), str2);
            jSONObject2.put(A00(56, 2, 108), i);
            jSONObject2.put(A00(61, 2, 121), i2);
            jSONObject2.put(A00(3, 3, 94), i3);
            jSONObject2.put(A00(0, 3, 124), FF.A01(jSONObject.toString(), str2));
            PA pa = new PA(jSONObject2.toString());
            pa.A03(1);
            P7.A07(this.A00, A00(41, 15, 0), 3201, pa);
        } catch (JSONException e) {
            Log.e(A02, A00(6, 35, 116), e);
        }
    }
}
