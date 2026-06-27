package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.util.Arrays;
import java.util.LinkedHashMap;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class HY {
    private static byte[] A01;
    public C0544Fi A00;

    static {
        A04();
    }

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 45);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{-52, -54, -39, -104, -65, -74, -74, 106, -100, -81, -67, -70, -71, -72, -67, -81, 106, -80, -71, -68, 106, -115, -71, -72, -80, -77, -79, 106, -100, -81, -69, -65, -81, -67, -66, -90, -39, -49, -54, -88, -89, -85, -84, -102, -103, -101, -93, -50, -80, -80, -80, -80, -80, -80, -80, -80, -80, -80, 124, -88, -89, -83, -98, -89, -83, -113, -102, -91, -82, -98, -84, -66, -43, -28, -25, -33, -30, -37, -112, -61, -39, -41, -34, -47, -36, -112, -62, -43, -29, -32, -33, -34, -29, -43, -112, -70, -29, -33, -34, -112, -64, -47, -30, -29, -39, -34, -41, -112, -75, -30, -30, -33, -30, -112};
    }

    public HY(C0544Fi c0544Fi) {
        this.A00 = c0544Fi;
    }

    @Nullable
    private static HZ A00(C0550Fo c0550Fo) throws JSONException {
        String strA02 = c0550Fo.A02();
        if (strA02 != null) {
            try {
                if (c0550Fo.A00() == 200) {
                    JSONObject jSONObject = new JSONObject(strA02);
                    String response = A02(36, 3, 57);
                    String sid = jSONObject.getString(response);
                    String response2 = A02(39, 8, 11);
                    String postback = jSONObject.getString(response2);
                    return new HZ(sid, postback);
                }
            } catch (JSONException e) {
                String sid2 = A02(58, 13, 12);
                String response3 = A02(71, 43, 67);
                Log.e(sid2, response3, e);
                return null;
            }
        }
        String response4 = A02(3, 32, 29);
        throw new JSONException(response4);
    }

    private static String A01(int i) {
        StringBuilder sb = new StringBuilder(i);
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= i / A02(48, 10, 33).length()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sb = sb;
                    sb.append(A02(48, 10, 33));
                    i2++;
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }

    private String A03(String str, String str2) {
        HY hy = this;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(A02(35, 1, 83));
        sb.append(str2);
        char c = hy.A00.A0i() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hy = hy;
                    if (hy.A00.A0Q() <= Math.random() * 100.0d) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    hy = hy;
                    sb = sb;
                    sb.append(A02(35, 1, 83));
                    sb.append(HX.A03.toString());
                    sb.append(A02(47, 1, 100));
                    sb.append(A01(hy.A00.A0R()));
                    c = 4;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }

    @Nullable
    public final HZ A05(String str, String str2, String str3, String str4) throws JSONException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(HX.A08.toString(), str);
        linkedHashMap.put(HX.A05.toString(), str2);
        linkedHashMap.put(HX.A07.toString(), str3);
        linkedHashMap.put(HX.A04.toString(), str4);
        linkedHashMap.put(HX.A06.toString(), C0592He.A00());
        C0550Fo c0550FoA04 = new C0549Fn(A03(this.A00.A0W(), C0549Fn.A02(linkedHashMap)), A02(0, 3, 88)).A04();
        HZ hzA00 = A00(c0550FoA04);
        if (this.A00.A0T() != null) {
            this.A00.A0T().A4V(str, str2, str3, C0592He.A00(), EnumC0591Hd.A04.toString(), c0550FoA04.A02(), c0550FoA04.A01());
        }
        return hzA00;
    }
}
