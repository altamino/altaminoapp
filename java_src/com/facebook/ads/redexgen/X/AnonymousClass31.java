package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.RewardData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.31, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass31 implements Serializable {
    private static byte[] A0G = null;
    private static final long serialVersionUID = 8751287062553772011L;

    @Nullable
    private RewardData A01;

    @Nullable
    private String A02;

    @Nullable
    private String A04;
    private final int A05;
    private final int A06;
    private final int A07;
    private final C02172n A08;
    private final AnonymousClass35 A09;
    private final AnonymousClass38 A0A;
    private final C3G A0B;
    private final String A0C;
    private final String A0D;
    private final String A0E;
    private final List<AnonymousClass32> A0F;
    private int A00 = 200;
    private String A03 = A01(125, 0, 43);

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0G = new byte[]{-88, -99, -75, -85, -79, -80, 1, 0, 3, 5, 3, -14, -6, 5, -15, 6, -5, -18, -6, -10, -16, -20, 0, -15, -8, -20, -7, -18, 6, -14, -1, -20, -11, 1, -6, -7, -20, 2, -1, -7, -8, -11, -17, -101, -116, -99, -98, -108, -103, -110, -51, -34, -10, -16, -4, -5, -18, -31, -35, -17, -39, -38, -31, -28, -31, -20, -15, -41, -37, -32, -35, -37, -29, -41, -31, -26, -20, -35, -22, -18, -39, -28, -86, -73, -88, -75, -72, -80, -72, -88, -67, -62, -71, -82, -111, -124, -128, -110, 124, 125, -124, -121, -124, -113, -108, 122, 126, -125, -128, 126, -122, 122, -124, -119, -124, -113, -124, 124, -121, 122, 127, -128, -121, 124, -108, -115, -112, -117, -113, -108, -101, -107, -113, -111, -97, -117, -104, -107, -102, -105, -117, -95, -98, -104, -95, -106, -95, -103, -110, -11, -24, -12, -8, -24, -10, -9, -30, -20, -25, -7, -18, -5, -15, 0, -16, -18, -3, -14, -124, -126, -109, -112, -106, -108, -122, -115};
    }

    private AnonymousClass31(AnonymousClass38 anonymousClass38, C02172n c02172n, List<AnonymousClass32> list, C3G c3g, AnonymousClass35 anonymousClass35, String str, String str2, int i, int i2, String str3, int i3) {
        this.A0A = anonymousClass38;
        this.A08 = c02172n;
        this.A0F = list;
        this.A0C = str;
        this.A0E = str2;
        this.A06 = i;
        this.A07 = i2;
        this.A0D = str3;
        this.A0B = c3g;
        this.A09 = anonymousClass35;
        this.A05 = i3;
    }

    public static AnonymousClass31 A00(JSONObject jSONObject, Context context) {
        String strA01;
        JSONObject layoutObject;
        JSONObject layoutObject2;
        AnonymousClass37 anonymousClass37A06 = new AnonymousClass37().A06(jSONObject.optString(A01(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 5, 24)));
        if (jSONObject.optJSONObject(A01(52, 4, 120)) != null) {
            strA01 = jSONObject.optJSONObject(A01(52, 4, 120)).optString(A01(40, 3, 110));
        } else {
            strA01 = A01(125, 0, 43);
        }
        AnonymousClass38 anonymousClass38A08 = anonymousClass37A06.A05(strA01).A04(jSONObject.optString(A01(125, 19, 23))).A07(AnonymousClass39.A04(jSONObject)).A08();
        C3G c3gA02 = AnonymousClass39.A02(jSONObject);
        AnonymousClass35 anonymousClass35A01 = AnonymousClass39.A01(jSONObject);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(0, 6, 39));
        if (jSONObjectOptJSONObject != null) {
            layoutObject = jSONObjectOptJSONObject.optJSONObject(A01(6, 8, 124));
        } else {
            layoutObject = null;
        }
        C02282y c02282yA01 = C02282y.A01(layoutObject);
        if (jSONObjectOptJSONObject != null) {
            layoutObject2 = jSONObjectOptJSONObject.optJSONObject(A01(159, 9, 120));
        } else {
            layoutObject2 = null;
        }
        C02172n c02172n = new C02172n(c02282yA01, C02282y.A01(layoutObject2));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A01(168, 8, 12));
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                try {
                    arrayList.add(AnonymousClass32.A00(jSONArrayOptJSONArray.getJSONObject(i)));
                } catch (JSONException e) {
                    String strA012 = A01(43, 7, 22);
                    int i2 = P8.A1X;
                    P7.A07(context, strA012, i2, new PA(e));
                    e.printStackTrace();
                }
            }
        } else {
            arrayList.add(AnonymousClass32.A00(jSONObject));
        }
        AnonymousClass31 anonymousClass31 = new AnonymousClass31(anonymousClass38A08, c02172n, arrayList, c3gA02, anonymousClass35A01, jSONObject.optString(A01(50, 2, 85)), jSONObject.optString(A01(149, 10, 110), A01(125, 0, 43)), jSONObject.optInt(A01(94, 31, 6), 0), jSONObject.optInt(A01(56, 26, 99), 1000), jSONObject.optString(A01(14, 26, 120), A01(125, 0, 43)), jSONObject.optInt(A01(82, 12, 52), 0));
        anonymousClass31.A03(jSONObject);
        return anonymousClass31;
    }

    private void A03(JSONObject jSONObject) {
        if (!TextUtils.isEmpty(this.A0D)) {
            this.A03 = jSONObject.toString();
        }
    }

    public final int A04() {
        return this.A05;
    }

    public final int A05() {
        return this.A00;
    }

    public final int A06() {
        return this.A06;
    }

    public final int A07() {
        return this.A07;
    }

    @Nullable
    public final RewardData A08() {
        return this.A01;
    }

    public final C02172n A09() {
        return this.A08;
    }

    public final AnonymousClass35 A0A() {
        return this.A09;
    }

    public final AnonymousClass38 A0B() {
        return this.A0A;
    }

    public final C3G A0C() {
        return this.A0B;
    }

    public final String A0D() {
        return this.A0C;
    }

    public final String A0E() {
        return this.A0D;
    }

    @Nullable
    public final String A0F() {
        return this.A02;
    }

    public final String A0G() {
        return this.A0E;
    }

    public final List<AnonymousClass32> A0H() {
        return Collections.unmodifiableList(this.A0F);
    }

    public final JSONObject A0I() {
        try {
            return new JSONObject(this.A03);
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public final void A0J(int i) {
        this.A00 = i;
    }

    public final void A0K(RewardData rewardData) {
        this.A01 = rewardData;
    }

    public final void A0L(@Nullable String str) {
        this.A02 = str;
    }

    public final void A0M(String str) {
        this.A04 = str;
        this.A0F.get(0).A06().A02(this.A04);
    }
}
