package com.facebook.ads.redexgen.X;

import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.39, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass39 {
    private static byte[] A00;

    static {
        A0G();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0G() {
        A00 = new byte[]{-36, -24, -25, -19, -30, -25, -18, -34, -40, -16, -38, -19, -36, -31, -30, -25, -32, -101, -93, -102, -94, -105, -115, -94, -105, -94, -102, -109, -69, -47, -41, -119, -50, -50, -126, -44, -57, -59, -57, -53, -40, -57, -126, -35, -45, -41, -61, -48, -42, -53, -42, -37, -33, -35, -59, -41, -44, -44, -57, -48, -59, -37, -33, -126, -53, -56, -126, -37, -47, -41, -126, -39, -61, -42, -59, -54, -126, -42, -54, -53, -43, -126, -40, -53, -58, -57, -47, -112, -95, -97, -88, -97, -84, -93, -99, -103, -82, -97, -78, -82, -95, -110, -91, -95, -116, -113, -94, -113, -113, -103, -110, -116, -92, -114, -106, -95, -106, -101, -108, -116, -109, -100, -97, -116, -97, -110, -92, -114, -97, -111, 93, 123, -118, 54, -111, -121, -117, 119, -124, -118, 127, -118, -113, -109, -125, -123, -120, 123, 54, -111, 121, -117, -120, -120, 123, -124, 121, -113, -109, -63, -65, -56, -65, -52, -61, -67, -71, -52, -65, -47, -69, -52, -66, -99, -70, -71, -72, -67, -71, -68, -81, -82, -68, -60, -69, -61, -72, -82, -62, -60, -79, -61, -72, -61, -69, -76, 126, -86, -87, -81, -92, -87, -80, -96, 91, -78, -100, -81, -98, -93, -92, -87, -94, 91, -81, -86, 91, -83, -96, -98, -96, -92, -79, -96, 91, -74, -84, -80, -100, -87, -81, -92, -81, -76, -72, -74, -98, -80, -83, -83, -96, -87, -98, -76, -72, -106, -62, -63, -57, -68, -63, -56, -72, 115, -86, -76, -57, -74, -69, -68, -63, -70, -79, -87, -89, -82, -100, -88, -89, -83, -94, -89, -82, -98, -104, -80, -102, -83, -100, -95, -94, -89, -96, -104, -97, -88, -85, -104, -85, -98, -80, -102, -85, -99, -58, -30, -41, -17, -106, -41, -28, -27, -22, -34, -37, -24, -106, -41, -38, -106, -22, -27, -106, -35, -37, -22, -106, -15, -25, -21, -41, -28, -22, -33, -22, -17, -13, -29, -27, -24, -37, -106, -15, -39, -21, -24, -24, -37, -28, -39, -17, -13, -94, -106, -27, -24, -106, -35, -27, -106, -40, -41, -39, -31, -106, -22, -27, -106, -22, -34, -37, -106, -35, -41, -29, -37, 93, 121, 110, -122, 45, 78, 123, 124, -127, 117, 114, 127, 45, 78, 113, -58, -50, -59, -51, -62, -72, -55, -56, -52, -62, -51, -62, -49, -66, -72, -51, -66, -47, -51, -115, -96, -78, -100, -83, -97, 91, -92, -87, 91, -106, -82, -96, -98, -82, -104, -82, -106, -62, -63, -57, -68, -63, -56, -72, 115, -54, -76, -57, -74, -69, -68, -63, -70, 115, -57, -62, 115, -59, -72, -74, -72, -68, -55, -72, 115, -76, -63, 115, -68, -63, -128, -70, -76, -64, -72, 115, -59, -72, -54, -76, -59, -73, -94, -107, -89, -111, -94, -108, -113, -103, -98, -113, -88, -72, -31, -28, -24, -38, -107, -74, -39, -102, -93, -90, -86, -100, -106, -104, -101, -82, -85, -86, -87, -82, -86, -83, -96, -97, 110, -122, -124, -117, -90, -82, -91, -83, -94, -104, -89, -98, -96, -102, -83, -94, -81, -98, -104, -83, -98, -79, -83, 100, -125, -123, -115, 66, -106, -111, 66, 105, -125, -113, -121};
    }

    private AnonymousClass39() {
    }

    public static AnonymousClass35 A00(JSONObject jSONObject) {
        return new AnonymousClass34().A0A(A0D(jSONObject)).A0B(A0D(jSONObject)).A09(A0C(jSONObject)).A08(A0B(jSONObject)).A07(A0A(jSONObject)).A0C();
    }

    public static AnonymousClass35 A01(JSONObject jSONObject) {
        return new AnonymousClass34().A0A(A08(jSONObject)).A0B(A07(jSONObject)).A08(A09(jSONObject)).A07(A06(jSONObject)).A06(A05(jSONObject)).A0C();
    }

    public static C3G A02(JSONObject jSONObject) {
        return new C3F().A02(A0E(jSONObject)).A03(A0F(jSONObject)).A04();
    }

    public static String A04(JSONObject jSONObject) {
        String strOptString = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strOptString = A03(173, 9, 68);
                    c = 3;
                    break;
                case 3:
                    return strOptString;
                case 4:
                    genericTextObject = genericTextObject;
                    strOptString = genericTextObject.optString(A03(490, 9, 53), A03(173, 9, 68));
                    c = 3;
                    break;
            }
        }
    }

    private static String A05(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(28, 60, 92);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(100, 30, 39), A03(28, 60, 92));
                    c = 3;
                    break;
            }
        }
    }

    private static String A06(JSONObject jSONObject) {
        String strOptString = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strOptString = A03(474, 8, 111);
                    c = 3;
                    break;
                case 3:
                    return strOptString;
                case 4:
                    genericTextObject = genericTextObject;
                    strOptString = genericTextObject.optString(A03(FetchService.QUERY_BY_STATUS, 8, 49), A03(474, 8, 111));
                    c = 3;
                    break;
            }
        }
    }

    private static String A07(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(196, 49, 53);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(266, 28, 51), A03(196, 49, 53));
                    c = 3;
                    break;
            }
        }
    }

    private static String A08(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(417, 46, 77);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(159, 14, 84), A03(417, 46, 77));
                    c = 3;
                    break;
            }
        }
    }

    private static String A09(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(245, 17, 77);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(0, 17, 115), A03(245, 17, 77));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0A(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(522, 12, 28);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(503, 19, 51), A03(522, 12, 28));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0B(JSONObject jSONObject) {
        String strOptString = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strOptString = A03(366, 15, 7);
                    c = 3;
                    break;
                case 3:
                    return strOptString;
                case 4:
                    genericTextObject = genericTextObject;
                    strOptString = genericTextObject.optString(A03(381, 19, 83), A03(366, 15, 7));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0C(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(294, 72, 112);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(182, 14, 73), A03(294, 72, 112));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0D(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(130, 29, 16);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(17, 11, 40), A03(130, 29, 16));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0E(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 17, 53);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(463, 11, 42), A03(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 17, 53));
                    c = 3;
                    break;
            }
        }
    }

    private static String A0F(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(88, 12, 52));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(499, 4, 21);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(262, 4, 56), A03(499, 4, 21));
                    c = 3;
                    break;
            }
        }
    }
}
