package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.permisson.NVPermission;
import com.narvii.util.Constants;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3D, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3D extends AbstractC02162m {
    private static byte[] A0G;
    private String A00 = A03(247, 0, 41);
    private boolean A01;
    private final int A02;
    private final C02172n A03;
    private final C02212r A04;
    private final C02252v A05;
    private final C02292z A06;
    private final AnonymousClass30 A07;
    private final AnonymousClass35 A08;
    private final AnonymousClass35 A09;
    private final AnonymousClass38 A0A;
    private final C3G A0B;
    private final String A0C;
    private final String A0D;
    private final String A0E;
    private final boolean A0F;

    static {
        A06();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static void A06() {
        A0G = new byte[]{65, 76, 84, 66, 88, 89, 16, 15, 18, 20, 18, 1, 9, 20, 102, 112, 118, 122, 123, 113, 102, 74, 115, 122, 103, 74, 103, 112, 98, 116, 103, 113, 47, 46, 56, 63, 34, 37, 42, 63, 34, 36, 37, 20, 63, 34, 63, 39, 46, 109, 114, 127, 126, 116, 68, 127, 110, 105, 122, 111, 114, 116, 117, 68, 104, 126, 120, 51, 53, 34, 52, 41, 52, 44, 37, 93, 95, 84, 95, 72, 83, 89, 101, 78, 95, 66, 78, 23, 4, 17, 12, 11, 2, 58, 19, 4, 9, 16, 0, 8, 21, 2, 13, 1, 5, 15, 51, 31, 8, 7, 51, 0, 13, 21, 9, 30, 51, 4, 24, 1, 0, 51, 25, 30, 0, 72, 84, 88, 82, 90, 87, 100, 88, 84, 85, 79, 94, 67, 79, 65, 67, 78, 78, 125, 86, 77, 125, 67, 65, 86, 75, 77, 76, 51, 56, 50, 9, 53, 55, 36, 50, 9, 63, 59, 55, 49, 51, 37, 76, 75, 85, 47, 34, 41, 52, 31, 7, 5, 28, 28, 13, 14, 0, 9, 51, 31, 9, 15, 3, 2, 8, 31, 67, 96, 127, 126, 99, 127, 98, 117, 116, 90, 77, 115, 121, 117, 116, 99, 103, 100, 97, 90, 102, 106, 104, 104, 100, 107, 97, 103, 104, 89, 106, 105, 97, 105, 89, 114, 127, 118, 99, 27, 26, 19, 30, 6, 32, 28, 19, 22, 28, 20, 32, 11, 26, 7, 11, 1, 4, 22, 5, 18, 20, 9, 19, 5, 18, 63, 14, 1, 13, 5, 45, 46, 49, 48, 45, 49, 44, 59, 58, 106, 111, 84, 104, 99, 100, 98, 104, 110, 120, 84, 103, 98, 101, 96, 84, 126, 121, 103, 118, 107, 118, 110, 103, 124, 103, 96, 120, 80, 102, 97, 123, 125, 96, 80, 123, 125, 110, 97, 124, 102, 123, 102, 96, 97, 76, 83, 94, 95, 85, 101, 79, 72, 86, 9, 30, 10, 14, 30, 8, 15, 36, 18, 31, 21, 16, 43, 23, 6, 17, 21, 0, 29, 2, 17, 43, 0, 13, 4, 17, 115, 119, 123, 125, 127, 94, 92, 73, 88, 90, 82, 79, 68, 96, 109, 98, 104, 127, 111, 109, 124, 105, 48, 13, 89, 14, 16, 21, 21, 89, 24, 12, 13, 22, 20, 24, 13, 16, 26, 24, 21, 21, 0, 89, 22, 9, 28, 23, 89, 16, 23, 89, 34, 10, 28, 26, 10, 36, 10};
    }

    private C3D(String str, AnonymousClass38 anonymousClass38, C02252v c02252v, C02292z c02292z, C02172n c02172n, C02212r c02212r, AnonymousClass30 anonymousClass30, C3G c3g, AnonymousClass35 anonymousClass35, AnonymousClass35 anonymousClass352, String str2, String str3, int i, boolean z) {
        this.A0E = str;
        this.A02 = i;
        this.A0A = anonymousClass38;
        this.A05 = c02252v;
        this.A06 = c02292z;
        this.A03 = c02172n;
        this.A04 = c02212r;
        this.A07 = anonymousClass30;
        this.A0C = str2;
        this.A0B = c3g;
        this.A09 = anonymousClass35;
        this.A08 = anonymousClass352;
        this.A0F = z;
        this.A0D = str3;
    }

    public static C3D A01(JSONObject jSONObject) {
        return A02(jSONObject, jSONObject.optInt(A03(219, 12, 34), 0));
    }

    public static C3D A02(JSONObject jSONObject, int i) {
        String strA03;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        String dynamicSdkLayer;
        AnonymousClass37 anonymousClass37A06 = new AnonymousClass37().A06(jSONObject.optString(A03(247, 15, 68)));
        if (jSONObject.optJSONObject(A03(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 4, 62)) != null) {
            strA03 = jSONObject.optJSONObject(A03(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 4, 62)).optString(A03(168, 3, 29));
        } else {
            strA03 = A03(247, 0, 41);
        }
        AnonymousClass38 anonymousClass38A08 = anonymousClass37A06.A05(strA03).A04(jSONObject.optString(A03(271, 19, 47))).A07(A05(jSONObject)).A08();
        C3G c3gA02 = AnonymousClass39.A02(jSONObject);
        AnonymousClass35 anonymousClass35A01 = AnonymousClass39.A01(jSONObject);
        AnonymousClass35 anonymousClass35A00 = AnonymousClass39.A00(jSONObject);
        C02252v c02252vA0I = new C02242u().A0H(jSONObject.optString(A03(290, 5, 38))).A0G(jSONObject.optString(A03(67, 8, 100))).A0B(jSONObject.optString(A03(171, 4, 105))).A0E(jSONObject.optString(A03(87, 12, 65))).A0A(jSONObject.optString(A03(356, 8, 25))).A0C(jSONObject.optString(A03(32, 17, 111))).A09(jSONObject.optString(A03(335, 16, 80))).A0F(jSONObject.optString(A03(125, 14, 31))).A0I();
        C02292z c02292z = new C02292z(jSONObject.optString(A03(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 12, 33)), jSONObject.optString(A03(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 14, 6)), A04(jSONObject));
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(A03(0, 6, 9));
        if (jSONObjectOptJSONObject3 != null) {
            jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject(A03(6, 8, 68));
        } else {
            jSONObjectOptJSONObject = null;
        }
        C02282y c02282yA01 = C02282y.A01(jSONObjectOptJSONObject);
        if (jSONObjectOptJSONObject3 != null) {
            jSONObjectOptJSONObject2 = jSONObjectOptJSONObject3.optJSONObject(A03(364, 9, 40));
        } else {
            jSONObjectOptJSONObject2 = null;
        }
        C02172n c02172n = new C02172n(c02282yA01, C02282y.A01(jSONObjectOptJSONObject2));
        C02202q c02202qA0H = new C02202q().A0H(jSONObject.optString(A03(FetchService.ACTION_QUERY, 9, 30)));
        if (jSONObject.optJSONObject(A03(351, 5, 62)) != null) {
            dynamicSdkLayer = jSONObject.optJSONObject(A03(351, 5, 62)).optString(A03(168, 3, 29));
        } else {
            dynamicSdkLayer = A03(247, 0, 41);
        }
        C02212r c02212rA0K = c02202qA0H.A0G(dynamicSdkLayer).A0D(jSONObject.optInt(A03(175, 17, 72), -1)).A0E(jSONObject.optInt(A03(49, 18, 63))).A0F(C3A.A01(jSONObject)).A0C(jSONObject.optInt(A03(14, 18, 49), Integer.MAX_VALUE)).A0K();
        AnonymousClass30 anonymousClass30 = new AnonymousClass30(C0760Nv.A04(jSONObject.optJSONArray(A03(io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED, 15, 114))));
        String strOptString = jSONObject.optString(A03(99, 26, 72), A03(247, 0, 41));
        String dynamicSdkLayer2 = A03(FetchService.ACTION_REMOVE_REQUEST_ALL, 10, 95);
        String strOptString2 = jSONObject.optString(dynamicSdkLayer2);
        String dynamicSdkLayer3 = A03(201, 2, 29);
        C3D c3d = new C3D(strOptString2, anonymousClass38A08, c02252vA0I, c02292z, c02172n, c02212rA0K, anonymousClass30, c3gA02, anonymousClass35A01, anonymousClass35A00, jSONObject.optString(dynamicSdkLayer3), strOptString, i, jSONObject.optBoolean(A03(295, 21, 43), false));
        c3d.A07(jSONObject);
        return c3d;
    }

    private static String A04(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(75, 12, 30));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(373, 37, 93);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(231, 16, 91), A03(373, 37, 93));
                    c = 3;
                    break;
            }
        }
    }

    private static String A05(JSONObject jSONObject) {
        String strA03 = null;
        JSONObject genericTextObject = jSONObject.optJSONObject(A03(75, 12, 30));
        char c = genericTextObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA03 = A03(PsExtractor.AUDIO_STREAM, 9, 52);
                    c = 3;
                    break;
                case 3:
                    return strA03;
                case 4:
                    genericTextObject = genericTextObject;
                    strA03 = genericTextObject.optString(A03(262, 9, 122), A03(PsExtractor.AUDIO_STREAM, 9, 52));
                    c = 3;
                    break;
            }
        }
    }

    private void A07(JSONObject jSONObject) {
        if (!TextUtils.isEmpty(this.A0D)) {
            this.A00 = jSONObject.toString();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final int A0A() {
        int i = 0;
        char c = this.A04.A05() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    i = 0;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final int A0B() {
        return this.A04.A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final String A0C() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final String A0D() {
        return this.A0D;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02162m
    public final void A0E(String str) {
        super.A0E(str);
        this.A07.A02(str);
    }

    public final int A0F() {
        return this.A02;
    }

    public final C02172n A0G() {
        return this.A03;
    }

    public final C02212r A0H() {
        return this.A04;
    }

    public final C02252v A0I() {
        return this.A05;
    }

    public final C02292z A0J() {
        return this.A06;
    }

    public final AnonymousClass30 A0K() {
        return this.A07;
    }

    public final AnonymousClass35 A0L() {
        return this.A08;
    }

    public final AnonymousClass35 A0M() {
        return this.A09;
    }

    public final AnonymousClass38 A0N() {
        return this.A0A;
    }

    public final C3G A0O() {
        return this.A0B;
    }

    public final String A0P() {
        return this.A0E;
    }

    public final JSONObject A0Q() {
        try {
            return new JSONObject(this.A00);
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public final void A0R(boolean z) {
        this.A01 = z;
    }

    public final boolean A0S() {
        return this.A01;
    }

    public final boolean A0T() {
        return this.A0F;
    }
}
