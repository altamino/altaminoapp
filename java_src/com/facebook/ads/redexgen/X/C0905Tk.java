package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0905Tk {
    private static byte[] A03;
    private final int A00;
    private final String A01;
    private final String A02;

    static {
        A03();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ENQUEUE_ERROR);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A03 = new byte[]{-15, 0, -7, -12, 3, -4, -4, 31, 23, 23, 21, 34, 3, 28, 15, 16, 26, 19, -50, 34, 29, -50, 17, 32, 19, 15, 34, 19, -50, 15, 18, 18, 23, 34, 23, 29, 28, 15, 26, -9, 28, 20, 29, 0, 3, -2, 17, 4, 16, 20, 4, 18, 19, -2, 8, 3, -18, -15, -20, -13, -4, -1, -6, -18, 1, -20, 1, 6, -3, -14, 84, 71, 66, 67, 77, 49, 52, 47, 51, 66, 53, 49, 68, 57, 70, 53, 47, 68, 73, 64, 53, 31, 35, 23, 29, 27};
    }

    public C0905Tk(String str, String str2, int i) {
        this.A02 = str;
        this.A00 = i;
        this.A01 = !TextUtils.isEmpty(str2) ? A01(70, 5, 105) : A01(91, 5, 65);
    }

    private PA A00(String str) {
        PA pa = new PA(str);
        pa.A05(A02());
        pa.A03(1);
        return pa;
    }

    private JSONObject A02() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A01(56, 14, 24), this.A00);
            jSONObject.put(A01(43, 13, 42), this.A02);
            jSONObject.put(A01(75, 16, 91), this.A01);
        } catch (JSONException e) {
            Log.w(A01(3, 9, 59), A01(12, 31, 57), e);
        }
        return jSONObject;
    }

    public final void A04(int i, String str) {
        P7.A07(IF.A00(), A01(0, 3, 24), i, A00(str));
    }
}
