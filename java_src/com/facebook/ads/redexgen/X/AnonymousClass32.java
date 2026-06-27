package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchService;
import io.agora.rtc.Constants;
import java.io.Serializable;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.32, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass32 implements Serializable {
    private static byte[] A09 = null;
    private static final long serialVersionUID = 85021702336014823L;
    private final C02212r A00;
    private final C02252v A01;
    private final C02292z A02;
    private final AnonymousClass30 A03;
    private final boolean A04;
    private final boolean A05;
    private final boolean A06;
    private final boolean A07;
    private final boolean A08;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A09 = new byte[]{39, 25, 23, 35, 34, 24, 39, 19, 26, 35, 38, 19, 38, 25, 43, 21, 38, 24, -40, -38, -57, -39, -50, -39, -47, -54, -8, -25, -6, -17, -12, -19, -27, -4, -25, -14, -5, -21, -80, -97, -78, -89, -84, -91, -99, -95, -83, -77, -84, -78, 19, 15, 3, 9, 1, 12, -1, 3, 15, 14, 20, 5, 24, 20, -62, -76, -81, -65, -77, -100, -102, -91, -91, -104, -83, -88, -104, -102, -100, -83, -94, -88, -89, -34, -25, -35, -40, -36, -38, -21, -35, -40, -30, -26, -38, -32, -34, -20, -87, -77, -97, -95, -75, -92, -87, -81, -97, -83, -75, -76, -91, -92, -36, -39, -45, -88, -75, -86, -65, -8, -11, -7, -9, -8, 4, -37, -41, -42, -39, -44, -40, -28, -30, -30, -42, -29, -39, -38, -45, -40, -48, -50, -43, -43, -58, -57, -47, -54, -60, -40, -54, -56, -44, -45, -55, -40, -41, -40, -33, -44, -20, -46, -42, -33, -36, -42, -34, -46, -25, -40, -21, -25, -46, -57, -50, -42, -66, -60, -41, -56, -45, -66, -45, -47, -64, -51, -46, -56, -45, -56, -50, -51, -17, -7, -27, -3, -25, -6, -23, -18, -27, -25, -12, -22, -27, -24, -8, -11, -3, -7, -21, 29, 39, 19, 38, 25, 43, 21, 38, 24, 25, 24, 19, 21, 24, -11, -22, -11, -19, -26, -78, -91, -96, -95, -85, -101, -79, -82, -88, -43, -54, -47, -39, -63, -53, -48, -42, -44, -47, -63, -42, -44, -61, -48, -43, -53, -42, -53, -47, -48, -28, -25, -30, -26, -11, -24, -28, -9, -20, -7, -24, -30, -9, -4, -13, -24, -93, -89, -101, -95, -97, -46, -59, -64, -63, -53, -69, -67, -47, -48, -53, -52, -56, -67, -43, -69, -63, -54, -67, -66, -56, -63, -64, 38, 27, 34, 42, 18, 24, 33, 23, 18, 22, 20, 37, 23, -73, -30, -114, -27, -41, -38, -38, -114, -49, -29, -30, -35, -37, -49, -30, -41, -47, -49, -38, -38, -25, -114, -35, -34, -45, -36, -114, -41, -36, -114, -55, -31, -45, -47, -31, -53, -31};
    }

    private AnonymousClass32(C02252v c02252v, C02292z c02292z, C02212r c02212r, AnonymousClass30 anonymousClass30, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.A01 = c02252v;
        this.A02 = c02292z;
        this.A00 = c02212r;
        this.A03 = anonymousClass30;
        this.A05 = z;
        this.A08 = z3;
        this.A06 = z5;
        this.A07 = z4;
        this.A04 = z2;
    }

    public static AnonymousClass32 A00(JSONObject jSONObject) {
        C02252v c02252vA0I = new C02242u().A0H(jSONObject.optString(A01(225, 5, 75))).A0G(jSONObject.optString(A01(18, 8, 47))).A0B(jSONObject.optString(A01(115, 4, 16))).A0F(jSONObject.optString(A01(50, 14, 106))).A0E(jSONObject.optString(A01(26, 12, 80))).A0D(jSONObject.optString(A01(38, 12, 8))).A09(jSONObject.optString(A01(260, 16, 77))).A0I();
        C02292z c02292z = new C02292z(jSONObject.optString(A01(125, 12, 63)), jSONObject.optString(A01(69, 14, 3)), jSONObject.optString(A01(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 16, 61), A01(FetchService.ACTION_QUERY, 37, 56)));
        boolean zOptBoolean = jSONObject.optBoolean(A01(281, 22, 38));
        boolean zOptBoolean2 = jSONObject.optBoolean(A01(PsExtractor.AUDIO_STREAM, 19, 80));
        boolean zOptBoolean3 = jSONObject.optBoolean(A01(211, 14, 126));
        boolean zOptBoolean4 = jSONObject.optBoolean(A01(239, 21, 44));
        boolean zOptBoolean5 = jSONObject.optBoolean(A01(303, 13, 125));
        boolean zOptBoolean6 = jSONObject.optBoolean(A01(TsExtractor.TS_STREAM_TYPE_AC4, 20, 41));
        C02202q c02202qA0J = new C02202q().A0H(jSONObject.optString(A01(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, 9, 6))).A0J(zOptBoolean);
        boolean isRewardedAd = jSONObject.optBoolean(A01(98, 14, 10), true);
        C02202q c02202qA0C = c02202qA0J.A0I(isRewardedAd).A0D(jSONObject.optInt(A01(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 19, 47), 0)).A0C(jSONObject.optInt(A01(0, 18, 126), Integer.MAX_VALUE));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(276, 5, 4));
        if (jSONObjectOptJSONObject != null) {
            c02202qA0C.A0G(jSONObjectOptJSONObject.optString(A01(112, 3, 49))).A0B(jSONObjectOptJSONObject.optInt(A01(64, 5, 21))).A0A(jSONObjectOptJSONObject.optInt(A01(119, 6, 90)));
        }
        AnonymousClass30 anonymousClass30 = new AnonymousClass30(C0760Nv.A04(jSONObject.optJSONArray(A01(83, 15, 67))));
        c02202qA0C.A0F(C3A.A01(jSONObject));
        return new AnonymousClass32(c02252vA0I, c02292z, c02202qA0C.A0K(), anonymousClass30, zOptBoolean2, zOptBoolean3, zOptBoolean4, zOptBoolean6, zOptBoolean5);
    }

    public final C02212r A03() {
        return this.A00;
    }

    public final C02252v A04() {
        return this.A01;
    }

    public final C02292z A05() {
        return this.A02;
    }

    public final AnonymousClass30 A06() {
        return this.A03;
    }

    public final boolean A07() {
        return this.A04;
    }

    public final boolean A08() {
        return this.A05;
    }

    public final boolean A09() {
        return this.A06;
    }

    public final boolean A0A() {
        return this.A07;
    }

    public final boolean A0B() {
        return this.A08;
    }
}
